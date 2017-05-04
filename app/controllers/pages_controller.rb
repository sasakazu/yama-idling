class PagesController < ApplicationController

  def home
    @mountains = Mountain.all


  end

  def about
  end

  def contact
  end
end
