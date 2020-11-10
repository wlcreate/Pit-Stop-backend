class Reflection < ApplicationRecord
  belongs_to :place

  validates :date_visited, presence: true
  validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10 } 
  # validates :rating, presence: true, numericality: { only_integer: true }, inclusion: {in: 0..10, message: "needs to be between 0 and 10" }
  validates :content, presence: true

  def nice_timestamp
    self.date_visited.strftime("%m/%d/%Y")
  end
end
