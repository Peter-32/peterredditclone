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
    @session = Session.new(params.require(:session).permit(:user))
    @session.save
    redirect_to pages_path
  end

  def destroy
    redirect_to pages_path
  end
end
