class ReviewsController < ApplicationController

  def create
    @film = Film.find(params[:film_id])
    @review = @film.reviews.create(params[:review].permit(:user_id,:body,:rating))
    redirect_to film_path(@film)
  end

end
