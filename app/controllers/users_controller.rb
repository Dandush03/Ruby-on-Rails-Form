class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    #user_params = (username: params[:username], email: params[:email], password: params[:pwd])

    if @user.save
      redirect_to users_new_path
    else
      render :new
    end
  end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
