class PostsController < ApplicationController
  before_action authenticate_member!, except: [:index]
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
  end
end
