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
    # TODO: here - direct to page saying to check email
    @user = User.new(params.require(:user).permit(:firstname, :username, :password, :email))
    if @user.save
      redirect_to pages_path
    else
      redirect_to pages_path
    end
  end
end
