class ReflectionSerializer < ActiveModel::Serializer
  attributes :id, :nice_timestamp, :rating, :content, :media
  # has_one :Place
end
