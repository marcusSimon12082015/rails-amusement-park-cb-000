class AttractionsController < ApplicationController
  def index
    @attractions = Attraction.all
  end

  def show
    @attraction = Attraction.find(params[:id])
  end

  def edit
    @attraction = Attraction.find(params[:id])
  end

  def update

  end

  def create
    @attraction = Attraction.create(attraction_params)
    if @attraction.save
      redirect_to @attraction
    else
      flash[:error] = "Error happened when creating a new attraction!"
      render :new
    end
  end

  def new
    @attraction = Attraction.new
  end

  private

  def attraction_params
    params.require(:attraction).permit(:name,:min_height,:happiness_rating,:nausea_rating,:tickets)
  end
end
