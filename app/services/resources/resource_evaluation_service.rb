module Resources
  class ResourceEvaluationService
    def initialize(resource_id)
      @resource_id = resource_id
    end

    def calculate_average_evaluation
      average_evaluation.presence || 'Sin evaluación'
    end

    private

    def rounded_evaluation
      average_evaluation&.round(1)
    end

    def average_evaluation
      @average_evaluation ||= ResourceEvaluation.where(
        resource_id: @resource_id
      ).average(:evaluation)
    end
  end
end
