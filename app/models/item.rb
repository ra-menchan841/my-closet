class Item < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :color, optional: true
  belongs_to :season, optional: true
  belongs_to :user, optional: true
  mount_uploader :image, ImageUploader
  validates :image, :category_id, :color_id, :season_id, :user_id, presence: true
end
