class LearningUnitsController < ApplicationController
  before_action :set_curriculum, only: [:index]
  before_action :set_learning_unit, only: [:show]

  def index
    @service = LearningUnits::DisplayUserLearningUnit.new(
      @curriculum,
      current_user
    )
  end

  def show
    set_curriculum if params.key?('curriculum_id')
    @service = LearningUnits::ResourceSorterService.new(@learning_unit)
  end

  private

  def set_curriculum
    @curriculum = Curriculum.find(params[:curriculum_id])
  end

  def set_learning_unit
    @learning_unit = LearningUnit.find(params[:id])
  end
end
