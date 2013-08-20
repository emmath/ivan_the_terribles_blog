class PostsController < ApplicationController

  def index
    @posts = Post.order("created_at").page(params[:page]).per_page(6)
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end


  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(params[:post])
  end


  def update
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end
end
