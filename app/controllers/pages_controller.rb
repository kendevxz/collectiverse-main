class PagesController < ApplicationController
  def home
    @posts = Post.order('karma DESC').all
    @posts = Post.global_search(params[:query]).order('karma DESC') if params[:query].present?
  end
end
