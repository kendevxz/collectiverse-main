class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    @user.user_id = current_user.id
    if @user.save
      redirect_to user_path(@user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success]="User and oversight updated"
      redirect_to root_path
    else
      flash[:error]="Something went wrong, please try again"
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :photo)
  end
end
