class Place < ApplicationRecord
  belongs_to :category
  belongs_to :trip
  has_many :reflections
end
