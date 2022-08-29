class LearningUnitsController < ApplicationController
  def index
    @learning_units = LearningUnit.all
    @curriculum = Curriculum.find(params[:curriculum_id])
  end

  def show
    @learning_unit = LearningUnit.find(params[:id])
  end
end
