module Api
  class CyclesController < ApiApplicationController
    before_action :set_curriculum, only: [:index]
    before_action :set_cycle, only: [:show]
    before_action :authenticate_user!, only: [:complete]

    def index
      cycles_data = @curriculum.cycles.map do |cycle|
        {
          id: cycle.id,
          order_number: cycle.order_number,
          name: cycle.name,
          learning_goals_description: cycle.learning_goals_description,
          completed: completed?(cycle)
        }
      end
      render json: cycles_data
    end

    def show
      cycle_data = {
        id: @cycle.id,
        name: @cycle.name,
        order_number: @cycle.order_number,
        learning_goals_description: @cycle.learning_goals_description,
        challenge_description: @cycle.challenge_description,
        boilerplate_url: @cycle.boilerplate_url,
        completed: completed?(@cycle)
      }
      render json: cycle_data
    end

    def complete
      cycle = Cycle.find(params[:cycle_id])
      if completed_learning_units?(cycle)
        state = UserCycleState.find_or_create_by(user: current_user, cycle:)
        state.completed_at = Time.current unless state.completed_at
        state.save
        success
      else
        bad_request
      end
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

    def completed?(cycle)
      state = UserCycleState.find_by(cycle:, user: current_user)
      return false if state.nil?

      state.completed_at.present?
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
