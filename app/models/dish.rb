class Dish < ApplicationRecord
  has_many :comments, as: :commented_on, dependent: :destroy
  has_many :matches
  has_many :wines, through: :matches
  validates :nom, presence: true
  acts_as_favoritable

  include PgSearch::Model
  multisearchable against: [:nom, :caracteristique]

  pg_search_scope :search_by_nom_et_caracteristique,
  against: [ :nom, :caracteristique ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
end
