class MountainsController < ApplicationController

  def new
    @mountain = Mountain.new
  end

  def edit
  end




  def create

    @mountain = Mountain.new(mountain_params)


      if @mountain.save
          redirect_to @mountain
    	else
    		render "new"
    	end
  end





  def show
    @mountain = Mountain.find(params[:id])
    # @user = User.find(params[:id])

  end


  def index
    @mountains = Mountain.all
  end


  private

    def mountain_params
      params.require(:mountain).permit(:name, :image, :image2, :image3, :price, :where, :long)
    end

    def user_params
        params.require(:user).permit(:icon)
    end



end
