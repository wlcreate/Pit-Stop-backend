class ReflectionSerializer < ActiveModel::Serializer
  attributes :id, :date_visited, :rating, :content
  # has_one :Place
end
