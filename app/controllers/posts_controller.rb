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

  def update
    @post = Post.find_by(id: params[:id])
    @post.update(
      date: Date.today || @post.date,
      title: params[:title] || @post.title,
      content: params[:content] || @post.content,
    )
    render :show
  end
  
end