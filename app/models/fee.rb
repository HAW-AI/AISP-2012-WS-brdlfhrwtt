class Fee < ActiveRecord::Base
  attr_accessible :care_time, :max_age, :valid_at

  validates :care_time, numericality: { greater_than_or_equal_to: 1 }
  validates :max_age, numericality: { greater_than_or_equal_to: 1 }
end
