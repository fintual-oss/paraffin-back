module Api
  class ResourceEvaluationsController < ApiApplicationController
    def index
      resource = Resource.find(params[:resource_id])
      resources_evaluations = resource.resource_evaluations
      render json: resources_evaluations
    end
  end
end
