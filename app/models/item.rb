class Item < ApplicationRecord
  belongs_to :category
  belongs_to :color
  belongs_to :season
  mount_uploader :image, ImageUploader
end
