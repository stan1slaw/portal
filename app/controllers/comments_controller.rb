class CommentsController < ApplicationController

  before_action :find_commentable, :login_user

  def new

    @comment = Comment.new

  end

  def create
    @comment = @commentable.comments.new(comment_params)

    if @comment.save
      redirect_to films_path, :notice => 'Comment created!'
    else
      redirect_to films_path, :notice => 'Comment not created!'
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    if @comment.destroy
      redirect_to films_path, notice: "Comment deleted."
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :user_id)
  end


  def find_commentable
    @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
    @commentable = Film.find_by_id(params[:film_id]) if params[:film_id]
  end


  def login_user
    if current_user
    else
      render 'films/loginError', status: 403
    end
  end


end