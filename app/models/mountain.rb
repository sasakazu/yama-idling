class Mountain < ApplicationRecord

  mount_uploader :image, ImageUploader
  mount_uploader :image2, ImageUploader
  mount_uploader :image3, ImageUploader

  validates :name, presence: true
  validates :price, presence: true
  validates :where, presence: true
  validates :long, presence: true
  validates :image, presence: true
  validates :image2, presence: true
  validates :image3, presence: true



end
