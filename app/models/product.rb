class Product < ApplicationRecord
  belongs_to :category
  has_many :orders
  has_many :users, through: :orders, dependent: :destroy
  mount_uploader :photo, ImageUploader

end
