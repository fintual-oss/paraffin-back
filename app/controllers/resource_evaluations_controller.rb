class ResourceEvaluationsController < ApplicationController
  def create
    evaluation = params['resource_evaluations']['evaluation']
    resource_id = params['resource_id']
    resource_evaluation = ResourceEvaluation
      .find_or_initialize_by(user_id: current_user.id, resource_id:)
    resource_evaluation.evaluation = evaluation
    resource_evaluation.save if resource_evaluation.has_changes_to_save?
    redirect_to(Resource.find(resource_id))
  end
end
