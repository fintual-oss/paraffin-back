module Api
  class CyclesController < ApiApplicationController
    before_action :set_curriculum, only: [:index]
    before_action :set_cycle, only: [:show]

    def index
      cycles = @curriculum.cycles
      render json: cycles,
             only: %i[id order_number name learning_goals_description]
    end

    def show
      render json: @cycle,
             only: %i[id name order_number learning_goals_description
                      challenge_description boilerplate_url]
    end

    private

    def set_curriculum
      @curriculum = Curriculum.find(params[:curriculum_id])
    end

    def set_cycle
      @cycle = Cycle.find(params[:id])
    end
  end
end
