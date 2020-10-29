class TripSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :start_date, :end_date
  # has_one :User
  has_many :places
end
