class FavoritesController < ApplicationController
  def update

      Favorite.find_or_create_by(film: Film.find(params[:film]), user: current_user)
      @favorite_exists = !@favorite_exists

    redirect_to film_path(id: Film.find(params[:film]))
  end
end
