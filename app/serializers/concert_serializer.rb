class ConcertSerializer < ActiveModel::Serializer
  attributes :id, :location, :date_attended, :concert_name
end
