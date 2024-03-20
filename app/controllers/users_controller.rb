class UsersController < ApplicationController
  before_action :set_user, only: %i[show create edit message]

  def show; end

  def create
    if @user.save
      redirect_to user_path(@user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = "User and oversight updated"
      redirect_to root_path
    else
      flash[:error] = "Something went wrong, please try again"
      render 'new'
    end
  end

  def message
    @users = User.all_except(current_user)

    setup_messages
    render 'rooms/index'
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :photo, :bio)
  end

  def setup_messages
    @room_name = get_name(@user, current_user)
    @single_room = Room.find_or_create_by(name: @room_name)
    @message = Message.new
    @messages = @single_room.messages.order(created_at: :asc)
  end

  def get_name(user1, user2)
    user = [user1, user2].sort
    "private_#{user[0].id}_#{user[1].id}"
  end
end
