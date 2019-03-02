class AttractionsController < ApplicationController
  def index
    @attractions = Attraction.all
  end

  def show
    @attraction = Attraction.find(params[:id])
  end

  def edit
  end

  def create

  end

  def new
    @attraction = Attraction.new
  end

  private

  def user_params
    params.require(:attraction).permit(:name,:min_height,:happiness_rating,:nausea_rating,:tickets)
  end
end
