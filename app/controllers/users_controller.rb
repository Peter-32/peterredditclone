class UsersController < ApplicationController
  #order: index, show, new, edit, create, update and destroy

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
    @user = User.new(params.require(:user).permit(:user, :password))
    @user.save
    redirect_to pages_path
  end

end
