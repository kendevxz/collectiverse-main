class ToysController < ApplicationController
  before_action :set_params, only: %i[show destroy]

  def index
    @posts = Post.all
    if params[:query].present?
      @posts = @posts.where(title: params[:query])
    end
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path # adjust later
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path, status: :see_other  # adjust later
  end

  private
  def post_params
   params.require(:post).permit(:title, :content)
  end

  def set_params
    @post = Post.find(params[:id])
  end
end
