class ChatRoom < ApplicationRecord

  belongs_to :user, foreign_key: "user_id"
  belongs_to :message ,foreign_key: "message_id"

  validates :user_id, presence: true
  validates :message_id, presence: true



end
