module Api
  class ResourcesController < ApiApplicationController
    def show
      resource = Resource.find(params[:id])
      render json: resource
    end

    def index
      learning_unit = LearningUnit.find(params[:learning_unit_id])
      resources = learning_unit.resources
      render json: resources
    end

    def average_evaluation
      resource = Resource.find(params[:resource_id])
      average_evaluation = ResourceEvaluation.where(resource:).average(:evaluation)
      evaluation = average_evaluation ? average_evaluation.round(1) : 'Sin evaluación'
      render json: { average_evaluation: evaluation }
    end
  end
end
