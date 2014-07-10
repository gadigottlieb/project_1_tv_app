class ActorsController < ApplicationController

  def index
    @actors = Actor.all
  end

  def new
    @actor = Actor.new
  end

  def create
    @actor = Actor.new(actor_params)
    if @actor.save
      redirect_to actor_path
    else
      render :new
    end
  end

  def show

  end

  def edit
  end

  def update
  end

  def destroy
  end


  private
  def actor_params
    params.require(:actor).permit(:name, :character, :profile_path)
  end




end
