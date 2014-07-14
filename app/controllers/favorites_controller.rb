class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all
  end

  def new
    @favorite = Favorite.new
    @shows = Show.all
  end

  def create
    @favorite = Favorite.new(fav_params)
    @favorite.user_id = session[:current_user]
    if @favorite.save
      redirect_to favorite_path(@favorite)
    else
      render :new
    end
  end

  def show
    @favorite = Favorite.find(params[:id])
    @user = @favorite.user
  end

  def edit
    @favorite = Favorite.find(params[:id])
    @shows = Show.all
  end

  def update
    @favorite = Favorite.find(params[:id])
    @favorite.update(fav_params)
    if @favorite.save
      redirect_to favorite_path(@favorite)
    else
      render :edit
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @user = @favorite.user
    if @favorite.destroy
      redirect_to user_path(@user)
    else
      redirect_to favorite_path(@favorite)
    end
  end

  private
  def fav_params
    params.require(:favorite).permit(:user_id, :show_id, :comment, :rating)
  end


end
