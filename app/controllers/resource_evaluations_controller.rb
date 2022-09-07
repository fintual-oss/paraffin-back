class ResourceEvaluationsController < ApplicationController
  def create
    evaluation = params['resource_evaluations']['evaluation']
    resource_id = params['resource_id']
    resource_evaluation = ResourceEvaluation
                          .find_or_initialize_by(user_id: current_user.id,
                                                 resource_id:)
    resource_evaluation.evaluation = evaluation
    resource_evaluation.save if resource_evaluation.has_changes_to_save?
    redirect_to_resource(resource_id)
  end

  private

  def redirect_to_resource(resource_id)
    redirect_to(
      learning_unit_resource_path(
        Resource.find(resource_id).learning_unit_id,
        resource_id
      )
    )
  end
end
