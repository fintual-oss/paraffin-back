class Api::ApiApplicationController < ActionController::API
  before_action :doorkeeper_authorize!

  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  protected

  def authenticate_user!
    if user_signed_in?
      super
    else
      status = :unauthorized
      code = 401
      message = 'User_not_authenticated'
      render json: { status:, code:, message: }, status:
    end
  end

  private

  def current_user
    @current_user ||= User.find_by(id: doorkeeper_token[:resource_owner_id])
  end

  def record_not_found
    status = :not_found
    code = 404
    message = 'Record_not_found'
    render json: { status:, code:, message: }, status:
  end
end
