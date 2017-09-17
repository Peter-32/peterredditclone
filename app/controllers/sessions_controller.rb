class SessionsController < ApplicationController

  def index
    redirect_to pages_path
  end

  def show
    redirect_to pages_path
  end

  def new
    redirect_to pages_path
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password]) && user.status == "ACTIVE"
      log_in(user)
    else
      flash.now[:danger] = 'Invalid email/password combination'
    end
    redirect_to pages_path
  end

  def destroy
    log_out
    redirect_to pages_path
  end
end
