class Fee < ActiveRecord::Base
  has_many :rates
  belongs_to :state

  accepts_nested_attributes_for :rates

  validates :care_time, numericality: { greater_than_or_equal_to: 1 }
  validates :max_age, numericality: { greater_than_or_equal_to: 1 }
end
