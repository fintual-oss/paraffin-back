module Api
  class ResourcesController < ApiApplicationController
    before_action :authenticate_user!, only: %i[evaluate evaluation create]

    def show
      resource = Resource.find(params[:id])
      render json: resource
    end

    def index
      resources = LearningUnit.find(params[:learning_unit_id])&.resources
      render json: resources, only: %i[id name url],
             methods: %i[
               average_evaluation
               number_of_evaluations
               resource_labels
             ]
    end

    def average_evaluation
      resource = Resource.find(params[:resource_id])
      evaluation = calculate_average_evaluation(resource.id)
      render json: { average_evaluation: evaluation }
    end

    def evaluate
      resource_id = params[:resource_id]
      Resource.find(resource_id)
      resource_evaluation = new_or_update_evaluation(resource_id)
      if resource_evaluation.save
        render json: resource_evaluation, status: :created
      else
        render json: resource_evaluation.errors, status: :unproccessable_entity
      end
    end

    def evaluation
      resource = Resource.find(params[:resource_id])
      resource_evaluation = ResourceEvaluation.find_by(
        resource:, user_id: current_user.id
      )
      if resource_evaluation
        render json: { evaluation: resource_evaluation.evaluation,
                       comment: resource_evaluation.comment }, status: :ok
      else
        render json: { evaluation: nil, comment: nil }, status: :ok
      end
    end

    def create
      resource_new = Resource.find_or_create_by(set_new_resource)
      if resource_new.save
        render json: resource_new, status: :created
      else
        render json: resource_new.errors, status: :unprocessable_entity
      end
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

    def new_or_update_evaluation(resource_id)
      resource_evaluation = ResourceEvaluation
                            .find_or_initialize_by(user_id: current_user.id,
                                                   resource_id:)
      resource_evaluation.evaluation = params[:evaluation]
      resource_evaluation.comment = params[:comment]
      resource_evaluation
    end

    def set_new_resource
      {
        "learning_unit_id": params[:learning_unit_id],
        "name": params[:name],
        "url": params[:url],
        "user_id": params[:user]
      }
    end
  end
end
