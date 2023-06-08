class PagesController < ApplicationController
  def home
  end

  def profile
    start_date = params.fetch(:start_date, Date.today).to_date
    @toys = Toy.where(release_date: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
  end
end
