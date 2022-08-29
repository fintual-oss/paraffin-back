class LearningUnitsController < ApplicationController
  def index
    @learning_units = LearningUnit.all
  end
end
