class ActorsController < ApplicationController

  def index
    @actors = Actor.all
  end

  def new
    @actor = Actor.new
    @shows = Show.all
  end

  def create
    @actor = Actor.new(actor_params)
    if @actor.save
      redirect_to actor_path(@actor)
    else
      render :new
    end
  end

  def show
    @actor = Actor.find(params[:id])
    @shows = Show.all
  end

  def edit
    @actor = Actor.find(params[:id])
    @shows = Show.all
  end

  def update
    @actor = Actor.find(params[:id])
    if @actor.update(actor_params)
      redirect_to actor_path(@actor)
    else
      render :edit
    end
  end

  def destroy
    @actor = Actor.find(params[:id])
    if @actor.destroy
      redirect_to actors_path
    else
      redirect_to actor_path(@actor)
    end
  end

  def search
    @results = TVDB.search_actors_show(params[:search])
    tmdb_config = Tmdb::Configuration.new
    @poster_sizes = tmdb_config.poster_sizes
    @base_url = tmdb_config.base_url
  end

  private
  def actor_params
    params.require(:actor).permit(:name, :character, :profile_path)
  end




end
