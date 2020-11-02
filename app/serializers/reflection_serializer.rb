class ReflectionSerializer < ActiveModel::Serializer
  attributes :id, :nice_timestamp, :rating, :content
  # has_one :Place
end
