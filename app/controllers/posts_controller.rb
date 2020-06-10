class PostsController < ApplicationController
  before_action :authenticate_member!, except: [:index]
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_member.posts.build(post_params)

    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.delete
    flash[:notice] = "Post has been succesfully deleted!"
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:body)
  end
end
