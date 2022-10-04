class Api::ApiApplicationController < ActionController::API
  before_action :authenticate_user!
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  protected

  def authenticate_user!
    if user_signed_in?
      super
    else
      status = :unauthorized
      code = 401
      message = 'User_not_authenticated'
      render json: {status:, code:, message: }, status:
    end
  end

  private

  def record_not_found
    status = :not_found
    code = 404
    message = 'Record_not_found'
    render json: { status:, code:, message: }, status:
  end
end
