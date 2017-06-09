class Wishlist < ApplicationRecord
  belongs_to :user
  belongs_to :artist
  validates :artist, :user, presence: true
  # has_many :attended_concerts
  # has_many :concerts, through: :attended_concerts
end
