class RepliesController < ApplicationController
  before_filter :get_post
  before_filter :get_comment
  before_filter :get_reply, only: [:show, :edit, :update, :destroy]

  def index
    @replies = Comment.replies.order("updated_at").page(params[:page]).per_page(7)
  end

  def show
    @reply = Reply.find(params[:id])
  end

  def new
    @reply = Reply.new
  end

  def edit
    @reply = Reply.find(params[:id])
  end

  def create
    @reply = Reply.new(params[:reply])
  end

  def update
    @reply = Reply.find(params[:id])
  end

  def destroy
    @reply = Reply.find(params[:id])
    @reply.destroy
  end

private

  def get_post
    @post = Post.find(params[:id])
  end

  def get_comment
    @comment = @post.comments.find(params[:id])
  end

  def get_reply
    @reply = @comment.replies.find(params[:id])
  end
end
