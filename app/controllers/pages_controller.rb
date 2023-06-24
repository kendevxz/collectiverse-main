class PagesController < ApplicationController
  def home
    @posts = Post.order('karma DESC').page(params[:page])
    @posts = Post.global_search(params[:query]).order('karma DESC') if params[:query].present?
  end
end
