module Users
  class SessionsController < Devise::SessionsController
    def new
      self.resource = resource_class.new(sign_in_params)
      store_location_for(resource, params[:redirect_to])
      super
    end

    def after_sign_in_path_for(resource)
      stored_location_for(resource) || root_path
    end
  end
end
