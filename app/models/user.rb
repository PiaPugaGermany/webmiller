class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]
  has_many :posts, dependent: :destroy
  has_many :orders
  has_many :products, through: :orders
  has_many :comments, dependent: :destroy

  mount_uploader :photo, AvatarUploader

  enum role: [:admin, :visit]

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      user.name = auth.info.name
      user.remote_photo_url = auth.info.image
    end
  end
end
