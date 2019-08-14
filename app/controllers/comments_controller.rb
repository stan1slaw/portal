class CommentsController < ApplicationController
  def create
    film = Film.find params[:comment][:commentable_id]
    comment = Comment.build_from film, current_user.id, comments_params[:body]
    comment.parent_id = params[:comment][:parent_id]
    if comment.save
      flash[:notice] = 'Your comment has been added.'
    else
      flash[:error] = 'There was a problem adding your comment.'
    end
    redirect_to film
  end

  def new
    @parent = Comment.find params[:parent_id]
    film = @parent.commentable
    @comment = Comment.build_from(film, current_user.id, '')
    @comment.parent_id = @parent.id
    respond_to do |format|
      format.js {}
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    if @comment.destroy
      redirect_to films_path, notice: "Comment deleted!"
    end
  end

  private

  def comments_params
    params.require(:comment).permit(:body, :commentable_name, :commentable_id, :commentable_type)
  end
end
