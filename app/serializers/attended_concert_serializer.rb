class AttendedConcertSerializer < ActiveModel::Serializer
  attributes :id, :concert_attendance_status
  has_one :wishlist
  has_one :concert
end
