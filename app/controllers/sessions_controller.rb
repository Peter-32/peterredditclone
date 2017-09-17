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
    # TODO: here - direct to page saying to check email
    @session = Session.new(params.require(:session).permit(:username))
    @session.save
    redirect_to pages_path
  end

  def destroy
    redirect_to pages_path
  end
end
