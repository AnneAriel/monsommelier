class Match < ApplicationRecord
  belongs_to :user
  belongs_to :wine
  belongs_to :dish
  has_many :comments, as: :commented_on

  include PgSearch::Model
  pg_search_scope :matches_search, associated_against: {
    wine: [:appellation, :couleur, :annee, :nom, :provenance, :cépage],
    dish: [:nom, :caracteristique]
  }

end
