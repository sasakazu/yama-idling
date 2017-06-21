class ChatRoomsController < ApplicationController



  def index
    @chat_rooms = ChatRoom.find(params[:user_id])
    @group = Group.find(params[:group_id])


  end


  def new
    @chat_room = ChatRoom.new

  end

  def show
    @messages = Message.all
    @chat_room = ChatRoom.find(params[:id])


  end



    def create

      @chat_room = current_user.chat_rooms.build(chat_room_params)

        if @chat_room.save
            redirect_to @chat_room
      	else
      		render "new"
      	end
    end



  private

    def chat_room_params
      params.require(:chat_room).permit(:title ,:user_id)
    end


  end
