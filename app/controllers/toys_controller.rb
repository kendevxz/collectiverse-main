class ToysController < ApplicationController

  def index
    @toys = Toy.where('release_date > ?', Date.today)
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
    toy = Toy.find(params[:id])
    UserToy.create(user_id: current_user.id, toy_id: toy.id)
    redirect_to profile_path(start_date: toy.release_date)
  end

  # def destroy
  #   @toy.destroy
  #   redirect_to root_path, status: :see_other  # adjust later
  # end

  private
  def toy_params
   params.require(:toy).permit(:title, :content)
  end

  def set_params
    @toy = toy.find(params[:id])
  end
end
