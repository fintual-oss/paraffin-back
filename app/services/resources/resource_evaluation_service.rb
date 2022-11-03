module Resources
  class ResourceEvaluationService
    def calculate_average_evaluation(resource_id)
      average_evaluation = ResourceEvaluation.where(resource_id:)
                                             .average(:evaluation)
      if average_evaluation
        average_evaluation.round(1)
      else
        'Sin evaluación'
      end
    end
  end
end
