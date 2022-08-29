class LearningUnitsController < ApplicationController
  def index
    @learning_units = LearningUnit.all
    @curriculum = Curriculum.find(params[:curriculum_id])
  end
end
