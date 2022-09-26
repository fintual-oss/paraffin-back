class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

  def record_not_found
    render json: {status: "error", code: 404,
                  message: "Resource not found"}
  end
end
