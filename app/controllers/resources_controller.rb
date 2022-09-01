class ResourcesController < ApplicationController
  def show
    resource = Resource.find(params[:id])
    @service = Resources::ResourceService.new(resource)
    @evaluation = ResourceEvaluation
                  .find_by(user: current_user, resource:)
  end
end
