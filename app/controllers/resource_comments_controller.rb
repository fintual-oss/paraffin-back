class ResourceCommentsController < ApplicationController
  def create
    content = params['resource_comments']['content']
    resource_id = params['resource_id']
    ResourceComment.create!(
      content:,
      user: current_user,
      resource_id:
    )
    redirect_to(Resource.find(resource_id))
  end
end
