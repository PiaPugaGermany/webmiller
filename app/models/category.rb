class Category < ApplicationRecord
  has_many :products
  has_many :categories
  mount_uploader :photo, ImageUploader
end
