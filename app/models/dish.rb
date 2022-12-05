class Dish < ApplicationRecord
  has_many :comments, as: :commented_on
  has_many :matches
  validates :nom, presence: true
  acts_as_favoritable

  include PgSearch::Model
  multisearchable against: [:nom, :caracteristique]
end
