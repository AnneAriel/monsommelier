class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :commented_on, polymorphic: true
  MAX_RATING = 5
  validates :note, numericality: { in: 0..MAX_RATING }


  include PublicActivity::Model
  tracked only: [:create], owner: Proc.new{ |controller, model| controller.current_user }



end
