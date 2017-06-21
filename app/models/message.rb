class Message < ApplicationRecord

  after_create_commit { MessageBroadcastJob.perform_later self }

  has_many :users, through: :chat_rooms
  has_many :chat_rooms
  accepts_nested_attributes_for :chat_rooms


end
