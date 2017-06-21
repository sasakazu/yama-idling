class AddMessageToChatRooms < ActiveRecord::Migration[5.0]
  def change
    add_reference :chat_rooms, :message, foreign_key: true
  end
end
