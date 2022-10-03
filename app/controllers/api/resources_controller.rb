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
      evaluation = calculate_average_evaluation(params[:resource_id])
      render json: { average_evaluation: evaluation }
    end

    def evaluate
      resource_id = params[:resource_id]
      evaluation = params[:evaluation]
      resource_evaluation = new_or_update_evaluation(resource_id, evaluation)
      if resource_evaluation.save
        render json: resource_evaluation, status: :created
      else
        render json: resource_evaluation.errors, status: :unproccessable_entity
      end
    end

    def evaluation
      resource_evaluation = ResourceEvaluation.find_by(
        resource_id: params[:resource_id], user_id: current_user.id
      )
      render json: { evaluation: resource_evaluation.evaluation }, status: :ok
    end

    private

    def calculate_average_evaluation(resource_id)
      average_evaluation = ResourceEvaluation.where(resource_id:)
                                             .average(:evaluation)
      if average_evaluation
        average_evaluation.round(1)
      else
        'Sin evaluación'
      end
    end

    def new_or_update_evaluation(resource_id, evaluation)
      resource_evaluation = ResourceEvaluation
                            .find_or_initialize_by(user_id: current_user.id,
                                                   resource_id:)
      resource_evaluation.evaluation = evaluation
      resource_evaluation
    end
  end
end
