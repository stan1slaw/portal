class PostsController < ApplicationController
  before_action :admin_login, only: [:create, :new, :destroy]
  def index
    params[:tag] ? @posts = Post.tagged_with(params[:tag]) : @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end
  def new
    @post = Post.new
  end
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      render :new
    end
  end
  def destroy
  @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end
  private
  def post_params
    params.require(:post).permit(:title, :content, :tag_list, :tag, { tag_ids: [] }, :tag_ids, {avatars: []})
  end
  def admin_login
    if current_user.try(:admin?)
    else
      render 'films/adminError', status: 403
    end
  end
end
