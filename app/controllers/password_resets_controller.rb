class PasswordResetsController < ApplicationController
  def new
  end

  def create
    if @user === User.find_by_email_address(params[:email])
      PasswordMailer.with(user: @user).reset.deliver_later
    end
    redirect_to '/login', notice: 'If an account with that email was found, we have sent a link to reset password'
  end

  def edit
    @user = User.find_signed!(params[:token], purpose: 'password_reset')
  rescue ActiveSupport::MessageVerifier::InvalidSignature
    redirect_to '/login', alert: 'Your token has expired. Please try again'
  end

  def update
    @user = User.find_signed!(params[:token], purpose: 'password_reset')
    if @user.update(password_params)
      redirect_to '/login', notice: 'Your password was reset succesfully. Please sign in.'
    else
      render 'edit'
    end
  rescue ActiveSupport::MessageVerifier::InvalidSignature
    redirect_to '/login', alert: 'Your token has expired. Please try again'
  end
end
