class MountainsController < ApplicationController

  def new
    @mountain = Mountain.new
  end

  def edit
    @mountain = Mountain.find(params[:id])
  end


  def update
   @mountain = Mountain.find(params[:id])
   if @mountain.update_attributes(mountain_params)
         redirect_to @mountain
   else
     render 'edit'
   end
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
    @user = @mountain.user

  end


  def index
    @mountains = Mountain.all
  end


  private

    def mountain_params
      params.require(:mountain).permit(:name, :image, :image2, :image3, :price, :where, :long, :user_id)
    end

    def user_params
        params.require(:user).permit(:icon, :name, :email)
    end



end
