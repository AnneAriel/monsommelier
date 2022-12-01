class Match < ApplicationRecord
  belongs_to :user
  belongs_to :wine
  belongs_to :dish
  has_many :comments, as: :commented_on

end
