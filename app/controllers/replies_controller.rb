class RepliesController < ApplicationController

  def index
    @replies = Reply.all
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
end
