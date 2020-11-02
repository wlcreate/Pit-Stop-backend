class Reflection < ApplicationRecord
  belongs_to :place

  def nice_timestamp
    self.date_visited.strftime("%m/%d/%Y")
  end
end
