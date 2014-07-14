class SeasonsController < ApplicationController

  def index
    @seasons = Season.all
  end

  def new
    @season = Season.new
    @shows = Show.all
  end

  def create
    @season = Season.new(season_params)
    if @season.save
      redirect_to season_path(@season)
    else
      render :new
    end
  end

  def show
    @season = Season.find(params[:id])
  end

  def edit
    @season = Season.find(params[:id])
    @shows = Show.all
  end

  def update
    @season = Season.find(params[:id])
    if @season.update(season_params)
      redirect_to season_path(@season)
    else
      render :edit
    end
  end

  def destroy
    @season = Season.find(params[:id])
    if @season.destroy
      redirect_to seasons_path
    else
      redirect_to season_path(@season)
    end
  end

  private
  def season_params
    params.require(:season).permit(:season_number, :air_date, :poster_path)
  end

end
