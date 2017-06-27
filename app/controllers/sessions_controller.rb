class SessionsController < ApplicationController
  def create
    @user = User.find_by_credentials(
      params[:user][:username],
      params[:user][:password]
    )
    if @user
      log_in(@user)
      redirect_to subs_url
    else
      flash[:errors] = ["Incorrect Login"]
      render :new
    end
  end

  def destroy
    log_out!
    redirect_to new_session_url
  end
  def session_params
    params.require(:user).permit(:username, :password)
  end
end
