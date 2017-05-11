class PagesController < ApplicationController

  def home
    # @mountains = Mountain.all
    @mountains = Mountain.paginate(:page => params[:page], :per_page => 3)

  end

  def about
  end

  def contact
  end
end
