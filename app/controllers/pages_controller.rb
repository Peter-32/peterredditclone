class PagesController < ApplicationController
  #order: index, show, new, edit, create, update and destroy

  def index
    @pages = Page.all
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
  end

  def create
    @page = Page.new(params.require(:page).permit(:title, :body))
    @page.save
    redirect_to @page
  end

  def get_score(item_upvotes, item_downvotes)
    upvotes = item_upvotes + 7
    downvotes = item_downvotes + 7
    return 100 * ( upvotes / float(upvotes + downvotes) )
  end

end
