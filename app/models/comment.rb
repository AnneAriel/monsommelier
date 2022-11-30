class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :commented_on, polymorphic: true
  MAX_RATING = 5
  validates :note, numericality: { in: 0..MAX_RATING }
end
