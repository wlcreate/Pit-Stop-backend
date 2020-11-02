class TripSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :start_nice_timestamp, :end_nice_timestamp
  # has_one :User
  has_many :places
end
