require 'date'
class PostsController < ApplicationController
  
  def index
    @posts = Post.all
    render :index
  end

  def create
    @post = Post.create(
      date: Date.today,
      title: params[:title],
      content: params[:content],
    )
    render :show
  end

  def show
    @post = Post.find_by(id: params[:id])
    render :show
  end
  
end