class Bookmark < ApplicationRecord
  belongs_to :wine
  belongs_to :user
  validates_uniqueness_of :book_id, scope: :user_id

end
