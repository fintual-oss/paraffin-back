module Api
  class LearningUnitsController < ApiApplicationController

    before_action :get_learning_unit, only: [:complete_learning_unit]

    def show
      learning_unit = LearningUnit.find(params[:id])
      render json: learning_unit
    end

    def index
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
      completed_learning_unit = CompletedLearningUnit.create(learning_unit: @learning_unit,
        user: current_user)
        render json: {completed_learning_unit:}
    end

    def uncomplete_learning_unit
      completed_learning_unit = CompletedLearningUnit.find_by(learning_unit_id: params[:learning_unit_id], user_id: current_user)
      deleted_learning_unit = completed_learning_unit.destroy
      render json: {deleted_learning_unit:}
    end

    private

    def get_learning_unit
      @learning_unit = LearningUnit.find(params[:learning_unit_id])
    end
  end
end
