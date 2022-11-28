class Wine < ApplicationRecord
  has_many :comments, as: :commented_on
  has_many :matches, :bookmarks
  validates :appellation, presence: true
  validates :couleur, presence: true
end
