module Api
  class LearningUnitSuccessionsController < ApiApplicationController
    def index
      cycle = Cycle.find(params[:cycle_id])
      successions = LearningUnitSuccession.where(cycle:)
      render json: successions, only: %i[predecessor_id successor_id]
    end
  end
end
