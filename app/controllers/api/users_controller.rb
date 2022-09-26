module Api
  class UsersController < ApiApplicationController
    def current
      user = current_user
      render json: user, only: %i[id name email]
    end
  end
end
