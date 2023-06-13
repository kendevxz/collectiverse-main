class ToysController < ApplicationController
  before_action :set_params, only: %i[show destroy]

  def index
    @toys = Toy.where('release_date > ?', Date.today)
  end

  def new
    @toy = Toy.new
  end

  def create
    @toy = Toy.new(toy_params)
    if @toy.save
      redirect_to root_path # adjust later
    else
      render :new, status: :unprocessable_entity
    end
  end

  def release_date
    UserToy.create(user_id: current_user.id, toy_id: params[:id])
    redirect_to profile_path(current_user)
  end

  def destroy
    @toy.destroy
    redirect_to root_path, status: :see_other  # adjust later
  end

  private
  def toy_params
   params.require(:toy).permit(:title, :content)
  end

  def set_params
    @toy = toy.find(params[:id])
  end
end
