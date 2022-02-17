class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    values = params["post"]
    @post = Post.new(values)
    @post.save
    redirect_to "/posts"
  end 

end