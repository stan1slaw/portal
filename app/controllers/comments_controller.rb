class CommentsController < ApplicationController

  before_action :finder

  def index

  end
  def show

  end
  def create
    @comment = @film.comments.create(comment_params)
    redirect_to film_path(@film), :notice => 'Comment created!'
  
  end

  def destroy
   
    @comment = @film.comments.find(params[:id])
    @comment.destroy
    redirect_to film_path(@film), :notice => 'Comment deleted!'
   
  end


  private
  def finder 
    @film = Film.find(params[:film_id])
  end

  def comment_params
    params.require(:comment).permit(:commenter, :body, :film_id, :user_id)

  end
end
