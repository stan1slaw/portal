class FilmsController < ApplicationController
  before_action :find_film,      only: [:show,:edit,:destroy,:update, :upvote, :downvote, :remove_actor, :add_actor]
  before_action :admin_user,     only: [:edit,:new,:destroy,:update,:add_actor,:remove_actor]
  before_action :actor_find, only: [:add_actor,:remove_actor]
  def index
   # search = params[:term].presence
    #@films = if search
            #   Film.search(search)
            # else
    @films = Film.all
    if params.key?(:franchise)
    @films =  Film.joins(:franchise).where(franchises: {name: params[:franchise]})
      expires_in 1.hour, public: true
    end
  end

  #def autocomplete
  #render json: Film.search(params[:query], {
  #  fields:['name','time_create'],
  #  match: :word_start,
  #  limit: 10,
  #   load: false,
  #  misspellings: {below: 5}
  # }).map(&:name)
  # end

  # /films/1 GET
  def show
    @favorite_exists = Favorite.where(film: @film, user: current_user).presence

    @actors = Actor.where('id NOT IN (?)',Actor.joins(:actors_films).where(actors_films: { film_id: params[:id]}).uniq)
    #@actors = Actor.find_by_sql("SELECT actors.id, name FROM actors EXCEPT SELECT actors.id, name FROM actors INNER JOIN actors_films ON actors.id = actors_films.actor_id WHERE actors_films.film_id = #{params[:id]}")

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
    if @film.save
      redirect_to @film, :notice => "Film was created!"
    else
      flash.now[:error] =  "You made mistakes in your form!"
      render :new
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
    @film.actors << @actor
    redirect_to film_path(@film)
  end

  def remove_actor
    @film.actors.delete(@actor)
    redirect_to film_path(@film)
  end

  private

  def film_params
    params.require(:film).permit(:name, :actor, :producer, :description, :time_create, { picture: [] }, :franchise_id)
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
  def actor_find
    @actor = Actor.find(params[:actor_id])
  end

end