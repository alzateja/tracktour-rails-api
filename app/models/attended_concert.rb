class AttendedConcert < ApplicationRecord
  belongs_to :wishlist
  belongs_to :concert
end
