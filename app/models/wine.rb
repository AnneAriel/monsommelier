class Wine < ApplicationRecord
  has_many :comments, as: :commented_on
  has_many :matches
  has_many :bookmarks
  has_one_attached :photo

  validates :couleur, presence: true
end
