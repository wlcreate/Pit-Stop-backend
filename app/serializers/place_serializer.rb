class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :area, :country, :revisit
  has_one :Category
  has_one :Trip
end
