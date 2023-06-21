class PagesController < ApplicationController
  def home
    @posts = Post.order('karma DESC').all
    @posts = Post.global_search(params[:query]).order('karma DESC') if params[:query].present?
      if current_user
        current_user.notifications.mark_as_read!
        @notifications = current_user.notifications.reverse
      end
  end
end
