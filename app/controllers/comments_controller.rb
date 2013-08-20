class CommentsController < ApplicationController
  before_filter :get_post
  before_filter :get_comment, only: [:show, :edit, :update, :destroy]

  def index
    @comments = Post.comments.(params[:page]).per_page(7)

  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def create
    @comment = Comment.new(params[:comment])
  end

  def update
    @comment = Comment.find(params[:id])
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
  end

private
  def get_post
    @post = Post.find(params[:id])
  end

  def get_comment
    @comment = @post.comments.find(params[:id])
  end
end
