class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate, only: [:new, :create, :edit, :update, :destroty]
  
  def set_post
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
    @user = current_user
  end

  def new
    @post = Post.new
  end

  def create
    @user = current_user
    @post = @user.posts.create(post_params)
    redirect_to @post
  end

  def show
    @posts = Post.all
    @user = current_user
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post.update(post_params)
    redirect_to @post
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private 
  
  def post_params
    params.require(:post).permit(:content, :title)
  end
end
