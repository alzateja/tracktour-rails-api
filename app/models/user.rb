# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :wishlists
  has_many :artists, through: :wishlists
end
