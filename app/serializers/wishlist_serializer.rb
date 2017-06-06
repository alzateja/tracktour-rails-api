class WishlistSerializer < ActiveModel::Serializer
  attributes :id, :wish_status
  has_one :user
  has_one :artist
end
