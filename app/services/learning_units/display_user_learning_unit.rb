module LearningUnits
  class DisplayUserLearningUnit
    def initialize(curriculum, current_user)
      @curriculum = curriculum
      @user = current_user
    end

    def user_learning_units
      @curriculum.learning_units.map do |learning_unit|
        {
          learning_unit:,
          user: @user,
          completed_by_user: CompletedLearningUnit.find_by(
            user: @user,
            learning_unit:
          )
        }
      end
    end
  end
end
