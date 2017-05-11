class Mountain < ApplicationRecord

  mount_uploader :image, ImageUploader
  mount_uploader :image2, ImageUploader
  mount_uploader :image3, ImageUploader

  validates :name, :price, :where, :long, :image, :image2, :image3, presence: true

  default_scope -> { order(created_at: :desc) }

  belongs_to :user, foreign_key: "user_id"

  validates :user_id, presence: true





end
