module Resources
  class ResourceService
    delegate :id, :url, :learning_unit, to: :@resource
    delegate :user, to: :@resource, private: true
    delegate :name, to: :learning_unit, prefix: :learning_unit

    def initialize(resource)
      @resource = resource
    end

    def comments
      @resource.resource_comments
    end

    def average
      @resource.resource_evaluations.average(:evaluation)
    end

    def created_by
      user.name
    end
  end
end
