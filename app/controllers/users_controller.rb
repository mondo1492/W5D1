class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      log_in(@user)
      redirect_to subs_url
    else
      flash[:errors] = ["Invalid username or password"]
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end
end
