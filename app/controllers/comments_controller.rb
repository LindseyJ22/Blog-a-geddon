class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to @comment.post
    else
      redirect_to @comment.post, alert: "Comment not made because #{@comment.errors.full_messages}"
    end
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def edit
     @comment = Comment.find(params[:id])
  end

  def update
    @comment.update(comment_params)
    redirect_to @post
  end

  def destroy
     @comment.destroy
    redirect_to posts_path
  end

  private 
  
  def comment_params
    params.require(:comment).permit(:content, :user_id, :post_id)
  end
end
