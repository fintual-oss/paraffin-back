module Api
  class ResourceEvaluationsController < ApiApplicationController
    def index
      evaluations = Resource.find(params[:resource_id])
                            .resource_evaluations
                            .order(created_at: :desc)
                            .includes(:user)
      evaluations_data = prepare_evaluations_data(evaluations)
      render json: evaluations_data
    end

    private

    def prepare_evaluations_data(evaluations)
      evaluations_data = []
      evaluations.each do |evaluation|
        evaluations_data << build_evaluation_object(evaluation)
      end
      evaluations_data
    end

    def build_evaluation_object(evaluation)
      {
        id: evaluation.id,
        evaluation: evaluation.evaluation,
        resource_id: evaluation.resource_id,
        user_id: evaluation.user.id,
        user_name: evaluation.user.name,
        comment: evaluation.comment,
        created_at: evaluation.created_at.strftime('%Y/%m/%d %H:%M:%S')
      }
    end
  end
end
