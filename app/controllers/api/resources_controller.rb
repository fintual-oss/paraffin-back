module Api
  class ResourcesController < ApiApplicationController
    def show
      resource = Resource.find(params[:id])
      render json: resource
    end
  end
end
