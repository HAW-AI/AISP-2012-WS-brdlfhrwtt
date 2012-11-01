class Account < ActiveRecord::Base
  attr_accessible :birth_sequence_position, :child, :child_count, :day_care_coupon, :free_preschool_year, :net_income, :person_count, :child_id

  belongs_to :child

  validates :child, presence: true
  validates :net_income, numericality: { greater_than_or_equal_to: 0 }
  validates :person_count, numericality: { greater_than_or_equal_to: 2 }
  validates :child_count, numericality: { greater_than_or_equal_to: 1 }
  validates :birth_sequence_position, numericality: { greater_than_or_equal_to: 1 }
end
