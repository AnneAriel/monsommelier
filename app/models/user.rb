class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookmarks
  has_many :comments
  has_many :followers
  has_many :matches
  has_one_attached :photo
  acts_as_favoritor
  acts_as_followable
  acts_as_follower

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
