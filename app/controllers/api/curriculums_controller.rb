module Api
  class CurriculumsController < ApiApplicationController
    def index
      curriculums = Curriculum.all
      render json: curriculums, only: %i[id name]
    end

    def show
      curriculum = Curriculum.find(params[:id])
      render json: curriculum, only: %i[id name]
    end
  end
end
