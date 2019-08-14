class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end

  def show
    @album = Album.find(params[:id])
  end

  def create
    @album = Album.create(album_params)
    @album.user_id = current_user.id
    if @album.save
      redirect_to user_path(@album.user_id), notice: "Album was created!"
    else
      render :new, notice: "You made mistakes!"
    end
  end

  private

  def album_params
    params.require(:album).permit(:name, :user_id, favorites_id: [])
  end
end
