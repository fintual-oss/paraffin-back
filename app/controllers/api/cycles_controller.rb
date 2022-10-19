module Api
  class CyclesController < ApiApplicationController
    before_action :set_curriculum, only: [:index]

    def index
      cycles = @curriculum.cycles
      render json: cycles,
             only: %i[id name learning_goals_description]
    end

    private

    def set_curriculum
      @curriculum = Curriculum.find(params[:curriculum_id])
    end
  end
end
