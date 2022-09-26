module Api
  class LearningUnitsController < ApiApplicationController
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
  end
end
