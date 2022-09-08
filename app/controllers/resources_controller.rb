class ResourcesController < ApplicationController
  def show
    resource = Resource.find(params[:id])
    @service = Resources::ResourceService.new(resource)
    @evaluation = ResourceEvaluation
                  .find_by(user: current_user, resource:)
  end

  def create
    name = params['resource']['name']
    learning_unit_id = params['learning_unit_id']
    url = params['resource']['url']
    Resource.create!(
      name:,
      url:,
      user: current_user,
      learning_unit_id:
    )
    redirect_to(LearningUnit.find(learning_unit_id))
  end
end
