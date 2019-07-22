class CommentsController < ApplicationController
  def index

  end
  def show

  end
  def create
    @film = Film.find(params[:film_id])
    @commenter_id = current_user.id
    @commenter = current_user.id
    @comment = @film.comments.create(comment_params)
    redirect_to film_path(@film)
  end

  def destroy
    @film = Film.find(params[:film_id])
    @comment = @film.comments.find(params[:id])
    @comment.destroy
    redirect_to film_path(@film)
  end


  private

  def comment_params
    params.require(:comment).permit(:commenter, :body, :film_id, :user_id)

  end
end
