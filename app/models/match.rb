class Match < ApplicationRecord
  belongs_to :user
  belongs_to :wine
  belongs_to :dish
  has_many :comments, as: :commented_on

  include PgSearch::Model
  multisearchable against: [:appellation, :couleur, :annee, :nom, :provenance, :cépage]
end
