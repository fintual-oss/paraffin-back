class Users::RegistrationsController < Devise::RegistrationsController
  # rubocop:disable Rails/LexicallyScopedActionFilter
  before_action :configure_permitted_parameters, only: [:create]
  # rubocop:enable Rails/LexicallyScopedActionFilter

  def update_resource(resource, params)
    if resource.provider == 'google_oauth2' || resource.provider == 'github'
      params.delete('current_password')
      resource.password = params['password']

      resource.update_without_password(params)
    else
      resource.update_with_password(params)
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
