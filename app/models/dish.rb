class Dish < ApplicationRecord
  has_many :comments, as: :commented_on
  validates :nom, presence: true
end
