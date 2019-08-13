class ActorsController < ApplicationController
  before_action :admin_user, only: [:edit, :new, :destroy, :update]
  before_action :form_params, only: [:create, :update]
  before_action :film_params, only: [:add_film]
  before_action :actor_find, only: [:edit,:update,:show, :destroy, :add_film, :remove_film]

  def index
    @actors = Actor.all
  end

  def create
    Actor.create form_params
    redirect_to actors_path
  end

  def new
    @actor = Actor.new
  end

  def edit
  end

  def show
    @films = Film.where('id NOT IN (?)',Film.joins(:actors_films).where(actors_films: { actor_id: params[:id]}).uniq)
    #@films = Film.find_by_sql("SELECT films.id, name FROM films EXCEPT SELECT films.id, name FROM films INNER JOIN actors_films ON films.id = actors_films.film_id WHERE actors_films.actor_id = #{params[:id]}")
  end

  def update
    @actor.update_attributes form_params
    redirect_to actor_path(@actor)
  end

  def destroy
    @actor.destroy
    redirect_to actors_path
  end

  def add_film

    film = Film.find(film_params[:id])
    @actor.films << film
    redirect_to actor_path(@actor)
  end

  def remove_film
    film = Film.find(params[:film_id])
    @actor.films.delete(film)
    redirect_to actor_path(@actor)
  end

  private

  def form_params
    params.require(:actor).permit(:name, :dataroz, :description, :avtor)
  end

  def actor_find
    @actor = Actor.find(params[:id])
  end

  def admin_user
    if current_user.try(:admin?)
    else
      render 'films/adminError', status: 403
    end
  end

  def film_params
     params.require(:film).permit(:id)
  end
end