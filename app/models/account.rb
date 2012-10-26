class Account < ActiveRecord::Base
  attr_accessible :birth_sequence_position, :child, :child_count, :day_care_coupon, :free_preschool_year, :net_income, :person_count

  belongs_to :child
end
