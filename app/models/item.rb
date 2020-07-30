class Item < ApplicationRecord
  belongs_to :category
  belongs_to :color
  belongs_to :season
  belongs_to :user
  mount_uploader :image, ImageUploader
  validates :image, presence: true
end
