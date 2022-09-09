class CompletedLearningUnitsController < ApplicationController
  before_action :set_learning_unit, only: [:create]

  def create
    CompletedLearningUnit.create(learning_unit: @learning_unit,
                                 user: current_user)
    redirect_to root_path
  end

  def destroy
    completed_learning_unit = CompletedLearningUnit.find(params[:id])
    completed_learning_unit.delete
    redirect_to root_path
  end

  private

  def set_learning_unit
    @learning_unit = LearningUnit.find(params[:learning_unit_id])
  end
end
