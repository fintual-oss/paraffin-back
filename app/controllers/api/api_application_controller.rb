class Api::ApiApplicationController < ActionController::API
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

  def record_not_found
    status = :not_found
    code = 404
    message = 'Record_not_found'
    render json: { status:, code:, message: }, status:
  end

  def bad_request
    status = :bad_request
    code = 400
    message = 'Bad Request'
    render json: { status:, code:, message: }, status:
  end
end
