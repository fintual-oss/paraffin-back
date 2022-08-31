class CurriculumsController < ApplicationController
  def show
    redirect_to curriculum_learning_units_path(Curriculum.first)
  end
end
