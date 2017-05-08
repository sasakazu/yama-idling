class MountainsController < ApplicationController

  def new
    @mountain = Mountain.new
  end

  def edit
  end




  def create

    @mountain = Mountain.new(mountain_params)    # 実装は終わっていないことに注意!


      if @mountain.save
          redirect_to @mountain
    	else
    		render "new"
    	end
  end





  def show
    @mountain = Mountain.find(params[:id])
    # @user = current_user.mountain.find(params[:id])

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
