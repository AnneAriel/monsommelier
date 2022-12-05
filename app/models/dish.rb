class Dish < ApplicationRecord
  has_many :comments, as: :commented_on, dependent: :destroy
  has_many :matches
  validates :nom, presence: true

  include PgSearch::Model
  multisearchable against: [:nom, :caracteristique]
end
