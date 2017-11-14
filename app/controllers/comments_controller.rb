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
    @user = current_user
  end

  def edit
     @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to @comment.post
  end

  def destroy
    respond_to do |format| #we are expecting a certain call
      @comment = Comment.find(params[:id]).destroy
      format.js
    end
  end

  private 
  
  def comment_params
    params.require(:comment).permit(:content, :user_id, :post_id)
  end
end
