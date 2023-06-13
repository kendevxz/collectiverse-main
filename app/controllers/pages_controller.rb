class PagesController < ApplicationController
  def home
    @posts = Post.order('karma DESC').all
    @posts = Post.global_search(params[:query]).order('karma DESC') if params[:query].present?
  end

  def profile
    start_date = params.fetch(:start_date, Date.today).to_date
    @toys = Toy.joins(:user_toys).where(user_toys: { user_id: current_user.id })
    if params[:date]
      @toys = @toys.where("release_date = ?", params[:date])
    end

    respond_to do |format|
      format.html
      format.text { render partial: "toys/toy_releases", locals: { toys: @toys }, formats: [:html]}
    end
    # @toys = Toy.where(release_date: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
  end
end
