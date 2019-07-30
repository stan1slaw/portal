class ActorsController < ApplicationController
  before_action :admin_user,     only: [:edit,:delete,:new,:destroy,:update]
  def index
    @actors = Actor.all
  end

  def create
    form_params = params.require(:actor).permit(:name, :dataroz, :description, :avtor)
    actor = Actor.create form_params
    redirect_to actors_path
  end

  def new
    @actor = Actor.new
  end

  def edit
    @actor = Actor.find(params[:id])
  end

  def show
    @actor = Actor.find(params[:id])
    @films = Film.all - @actor.films
  end

  def update
    form_params = params.require(:actor).permit(:name, :dataroz, :description, :avtor)
    actor = Actor.find(params[:id])
    actor.update_attributes form_params
    redirect_to actor_path(actor)
  end

  def destroy
    actor = Actor.find(params[:id])
    actor.destroy
    redirect_to actors_path
  end

  def add_film
    film_params = params.require(:film).permit(:id)
    actor = Actor.find(params[:id])
    film = Film.find(film_params[:id])
    unless actor.films.include? film
      actor.films << film
    end
    redirect_to actor_path(actor)
  end

  def remove_film
    actor = Actor.find(params[:id])
    film = Film.find(params[:film_id])
    actor.films.delete(film)
    redirect_to actor_path(actor)
  end

  private
  def admin_user
    if current_user.try(:admin?)

    else
      render 'films/adminError', status: 403
    end
  end
end