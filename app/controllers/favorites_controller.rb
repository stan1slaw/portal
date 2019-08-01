class FavoritesController < ApplicationController
  def update
    favorite = Favorite.where(film: Film.find(params[:film]), user: current_user)
    if favorite == []
      Favorite.create(film: Film.find(params[:film]), user: current_user)
      @favorite_exists = true
    else
      favorite.destroy_all
      @favorite_exists = false
    end
    respond_to do |format|
      format.html {}
      format.js {}
    end
    redirect_to film_path(id: Film.find(params[:film]))
  end
end
