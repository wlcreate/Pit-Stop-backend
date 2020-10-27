class Place < ApplicationRecord
  belongs_to :Category
  belongs_to :Trip
end
