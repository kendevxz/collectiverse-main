class PostsController < ApplicationController
  def index
    @posts = Post.all
    if params[:query].present?
      @posts = @posts.where(title: params[:query])
    end
  end
end
