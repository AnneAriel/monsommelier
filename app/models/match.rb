class Match < ApplicationRecord
  belongs_to :user
  belongs_to :wine
  belongs_to :dish

  has_many :comments, as: :commented_on, dependent: :destroy
  acts_as_favoritable

  include PgSearch::Model
  pg_search_scope :matches_search, associated_against: {
    wine: [:appellation, :nom_commercial, :couleur, :annee, :nom, :provenance, :cépage],
    dish: [:nom, :caracteristique]
  }
end
