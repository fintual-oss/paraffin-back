class ResourceCommentsController < ApplicationController
  def create
    content = params['resource_comments']['content']
    resource_id = params['resource_id']
    ResourceComment.create!(
      content:,
      user: current_user,
      resource_id:
    )
    redirect_to_resource(resource_id)
  end

  private

  def redirect_to_resource(resource_id)
    redirect_to(resource_path(resource_id))
  end
end
