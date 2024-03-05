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
      body: params[:body],
    )
    render :show
  end
end