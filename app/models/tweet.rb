class Tweet < ApplicationRecord
  validates :country, presence: true
  mount_uploader :image, ImageUploader
end
