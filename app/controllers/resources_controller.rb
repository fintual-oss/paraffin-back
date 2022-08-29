class ResourcesController < ApplicationController
  def show
    resource = Resource.find(params[:id])
    @service = Resources::ResourceService.new(resource)
  end
end
