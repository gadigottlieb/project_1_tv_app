class ShowsController < ApplicationController

  def index
    @shows = Show.all
  end

  def new
    @show = Show.new
  end

  def create
    @show = Show.new(show_params)
    if @show.save
      redirect_to show_path(@show)
    else
      render :new
    end
  end

  def show
    @show = Show.find(params[:id])
  end

  def edit
    @show = Show.find(params[:id])
  end

  def update
    @show = Show.find(params[:id])
    if @show.update(show_params)
      redirect_to show_path(@show)
    else
      render :edit
    end
  end

  def destroy
    @show = Show.find(params[:id])
    if @show.destroy
      redirect_to shows_path
    else
      redirect_to show_path(@show)
    end
  end

  def search
    @results = TVDB.search_show_title(params[:search])
    tmdb_config = Tmdb::Configuration.new
    @poster_sizes = tmdb_config.poster_sizes
    @base_url = tmdb_config.base_url
  end

  def add_new
    new_show = TVDB.search_show_title(params[:search])
    @show = Show.find_or_create_by(new_show.first)
    if @show.save
        redirect_to show_path(@show)
    end
  end

  private
  def show_params
    params.require(:show).permit(:title, :image_url, :first_air_date, :plot, :genre, :network)
  end
end
