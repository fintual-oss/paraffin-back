module Api
  class ResourcesController < ApiApplicationController
    before_action :authenticate_user!,
                  only: %i[evaluate evaluation create completed
                           complete_resource uncomplete_resource]

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
      evaluation =
        Resources::ResourceEvaluationService.new.calculate_average_evaluation(
          resource.id
        )
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

    def completed
      resource_id = Resource.find(params[:resource_id])
      completed_by_user = CompletedResource.find_by(
        user: current_user,
        resource_id:
      )
      completed = completed_by_user ? true : false
      render json: { completed: }
    end

    def complete_resource
      resource = Resource.find(params[:resource_id])
      completed_resource = CompletedResource.create(resource:,
                                                    user: current_user)
      if completed_resource.valid?
        render json: { completed: true }
      else
        bad_request
      end
    end

    def uncomplete_resource
      completed_resource = CompletedResource.find_by(
        resource_id: params[:resource_id], user_id: current_user
      )
      if completed_resource
        completed_resource.destroy!
        render json: { deleted: true }
      else
        record_not_found
      end
    end

    private

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
