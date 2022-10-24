module Api
  class LearningUnitsController < ApiApplicationController
    before_action :set_learning_unit, only: [:complete_learning_unit]
    before_action :authenticate_user!,
                  only: %i[completed complete_learning_unit
                           uncomplete_learning_unit]

    def show
      learning_unit = LearningUnit.find(params[:id])
      render json: learning_unit
    end

    def index
      cycle = Cycle.find(params[:cycle_id])
      learning_units = cycle.learning_units
      render json: learning_units, only: %i[id name description image_url]
    end

    def curriculum_learning_units
      curriculum = Curriculum.find(params[:curriculum_id])
      learning_units = curriculum.learning_units
      render json: learning_units
    end

    def completed
      learning_unit_id = LearningUnit.find(params[:learning_unit_id])
      completed_by_user = CompletedLearningUnit.find_by(
        user: current_user,
        learning_unit_id:
      )
      completed = completed_by_user ? true : false
      render json: { completed: }
    end

    def complete_learning_unit
      completed_learning_unit =
        CompletedLearningUnit.create(
          learning_unit: @learning_unit,
          user: current_user
        )
      if completed_learning_unit.valid?
        render json: { completed: true }
      else
        bad_request
      end
    end

    def uncomplete_learning_unit
      completed_learning_unit = CompletedLearningUnit.find_by(
        learning_unit_id: params[:learning_unit_id], user_id: current_user
      )
      if completed_learning_unit
        completed_learning_unit.destroy!
        render json: { deleted: true }
      else
        not_found
      end
    end

    private

    def set_learning_unit
      @learning_unit = LearningUnit.find(params[:learning_unit_id])
    end

    def bad_request
      status = :bad_request
      code = 400
      message = 'Bad Request'
      render json: { status:, code:, message: }, status:
    end

    def not_found
      status = :not_found
      code = 404
      message = 'Record_not_found'
      render json: { status:, code:, message: }, status:
    end
  end
end
