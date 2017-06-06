class Artist < ApplicationRecord
  has_many :users, through: :wishlists
  has_many :wishlists

  validates :artist_name, presence: true
end
