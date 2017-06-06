class Wishlist < ApplicationRecord
  belongs_to :user
  belongs_to :artist
  has_many :attended_concerts
  has_many :concerts, through: :attended_concerts
end
