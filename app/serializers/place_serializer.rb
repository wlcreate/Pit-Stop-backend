class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :area, :country, :revisit, :latitude, :longitude
  has_one :category
  # has_one :Trip
  has_many :reflections
end
