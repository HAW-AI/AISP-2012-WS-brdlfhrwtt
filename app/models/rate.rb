class Rate < ActiveRecord::Base
  attr_accessible :five_people, :four_people, :net_income, :six_people, :three_people, :two_people

  validates :net_income, numericality: { greater_than_or_equal_to: 0 }
end
