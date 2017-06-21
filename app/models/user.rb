class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :icon, ImageUploader

  has_many :mountains, dependent: :destroy

  
  has_many :chat_rooms, class_name:  "ChatRoom",
                                  foreign_key: "user_id",
                                  dependent:   :destroy


  has_many :messages, through: :chat_rooms


end
