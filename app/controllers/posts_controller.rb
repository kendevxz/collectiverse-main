class PostsController < ApplicationController
  before_action :set_params, only: %i[show destroy]

  def index
    @posts = Post.all
    if params[:query].present?
      @posts = @posts.where(title: params[:query])
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path, status: :see_other  # adjust later
  end

  private

  def set_params
    @post = Post.find(params[:id])
  end
end
