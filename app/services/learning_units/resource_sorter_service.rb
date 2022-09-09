module LearningUnits
  class ResourceSorterService
    delegate :name, to: :learning_unit, prefix: :learning_unit
    def initialize(learning_unit)
      @learning_unit = learning_unit
    end

    def resources_sorted_by_evaluation
      resources = resource_evaluations_query
      resources.map do |array|
        { id: array[0][0], name: array[0][1], evaluation: array[1] }
      end
    end

    private

    def resource_evaluations_query
      Resource.where(learning_unit: @learning_unit)
              .left_joins(:resource_evaluations)
              .group(:id, :name)
              .average('resource_evaluations.evaluation')
              .sort_by { |_, v| v || -Float::INFINITY }.reverse
    end
  end
end
