class MessagesController < ApplicationController


def new
    @message = Message.new
end


def create

  @message = current_user.messages.create(message_params)

    if @message.save
        redirect_to @message
    else
      render "new"
    end
end


def show

end

def index
  @messages = current_user.messages
  # @user = @messages.user


end





private

    def message_params
      params.require(:message).permit(:content, :chat_room_id, :user_id)
    end

end
