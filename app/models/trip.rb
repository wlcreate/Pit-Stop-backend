class Trip < ApplicationRecord
  belongs_to :user
  has_many :places

  validates :title, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true

  def start_nice_timestamp
    self.start_date.strftime("%m/%d/%Y")
  end

  def end_nice_timestamp
    self.end_date.strftime("%m/%d/%Y")
  end

end
