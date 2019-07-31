class FilmsController < ApplicationController
  before_action :find_film,      only: [:show,:edit,:destroy,:update, :upvote, :downvote]
  before_action :admin_user,     only: [:edit,:delete,:new,:destroy,:update,:add_actor,:remove_actor]
  def index
    # Сортировки про
    @films = Film.all.order("cached_votes_up DESC")

  end
  # /films/1 GET
  def show
    @actors = Actor.all - @film.actors
    if @film
    else
      render "films/notFound"
    end
  end
  # /films/new GET
  def new
    @film = Film.new
  end
  # /films/1/edit GET
  def edit
  end

  # /films POST
  def create
    @film = Film.create(film_params)
    if @film.errors.empty?
      redirect_to film_path(@film), :notice => "film was created!"
    else
      render 'new'
    end
  end

  # /films/1 PUT
  def update
    @film.update_attributes(film_params)
    if @film.errors.empty?
      flash.now[:success] = "Film updated!"
      redirect_to film_path(@film)
    else
      flash.now[:error] = "You made mistakes in your form!"
      render 'edit'
    end
  end
  # /films/1 DELETE
  def destroy
    @film.destroy
    redirect_to action: 'index', :notice => "Film was deleted!"
  end

  def upvote
  @film.upvote_from current_user
    redirect_to films_path, :notice => "You made choose!"
  end

  def downvote
    @film.downvote_from current_user
    redirect_to films_path, :notice => "You made choose!"
  end

  def add_actor
    film = Film.find(params[:id])
    actor = Actor.find(params[:actor_id])
    film.actors << actor unless film.actors.include? actor
    redirect_to film_path(film)
  end

  def remove_actor
    film = Film.find(params[:id])
    actor = Actor.find(params[:actor_id])
    film.actors.delete(actor)
    redirect_to film_path(film)
  end

  private

  def film_params
    params.require(:film).permit(:name, :actor, :producer, :description, :time_create, :picture)
  end

  def find_film
    @film = Film.where(id: params[:id]).first
    render_404 unless @film
  end
  def admin_user
    if current_user.try(:admin?)

    else
      render 'films/adminError', status: 403
    end
  end

end
