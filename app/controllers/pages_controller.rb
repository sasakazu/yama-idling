class PagesController < ApplicationController

  def home
    # @mountains = Mountain.all
    @mountains = Mountain.paginate(:page => params[:page])

  end

  def about
  end

  def contact
  end
end
