class MountainsController < ApplicationController

  def new
    @mountain = Mountain.new
  end

  def edit
  end




  def create

    @mountain = current_user.mountains.build(mountain_params)

      if @mountain.save
          redirect_to @mountain
    	else
    		render "new"
    	end
  end





  def show
    @mountain = Mountain.find(params[:id])

    # @user = Mountain.find_by(user_id: params[:user_id])
    # @user = @mountain.paginate(page: params[:page])


  end


  def index
    @mountains = Mountain.all
  end


  private

    def mountain_params
      params.require(:mountain).permit(:name, :image, :image2, :image3, :price, :where, :long, :user_id)
    end

    def user_params
        params.require(:user).permit(:icon)
    end



end
