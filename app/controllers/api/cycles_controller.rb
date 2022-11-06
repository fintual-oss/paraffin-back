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

    def complete
      cycle = Cycle.find(params[:cycle_id])
      if completed_learning_units?(cycle)
        UserCycleState.find_or_create_by(user: current_user, cycle:) do |state|
          state.completed_at = Time.current unless state.completed_at
        end
        success
      else
        bad_request
      end
    end

    def uncomplete
      cycle = Cycle.find(params[:cycle_id])
      cycle_state = UserCycleState.find_by(user: current_user, cycle:)
      cycle_state.completed_at = nil if cycle_state
      success
    end

    private

    def set_curriculum
      @curriculum = Curriculum.find(params[:curriculum_id])
    end

    def set_cycle
      @cycle = Cycle.find(params[:id])
    end

    def completed_learning_units?(cycle)
      cycle.learning_units.all? do |learning_unit|
        CompletedLearningUnit.exists?(user: current_user, learning_unit:)
      end
    end

    def create_cycle_state(cycle)
      UserCycleState.create(cycle:, user: current_user)
    end

    def success
      status = :ok
      code = 200
      message = 'Success'
      render json: { status:, code:, message: }, status:
    end

    def bad_request
      status = :bad_request
      code = 400
      message = 'Bad Request'
      render json: { status:, code:, message: }, status:
    end
  end
end
