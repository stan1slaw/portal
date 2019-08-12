class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.create(album_params)
    @album.user_id = current_user.id if current_user
    if @album.save
      redirect_to user_path(@album.user_id), notice: "Album was created!"
    else
      render :new, notice: "Album was created!"
    end
  end

  private

  def album_params
    params.require(:album).permit(:name, :user_id, favorites_id: [])
  end
end
