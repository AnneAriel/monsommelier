class Wine < ApplicationRecord
  has_many :comments, as: :commented_on
  has_many :matches
  has_many :bookmarks
  has_one_attached :photo
  acts_as_favoritable

  validates :couleur, presence: true

  include PgSearch::Model
  multisearchable against: [:appellation, :nom_commercial, :couleur, :annee, :nom, :provenance, :cépage]
end
