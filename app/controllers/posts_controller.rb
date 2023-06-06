class PostsController < ApplicationController
  before_action :set_params, only: %i[show destroy]

  def index
    @posts = Post.all
    if params[:query].present?
      @posts = @posts.where(title: params[:query])
    end
  end

  def new
    @post = Post.new
  end

  def create
    raise
    @post = Post.new(params[:post])
    @post.save

    redirect_to post_path(@post)
  end

  def destroy
    @post.destroy
    redirect_to root_path, status: :see_other  # adjust later
  end

  private

  def set_params
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :photo)
  end
end
