class Rate < ActiveRecord::Base
  belongs_to :fee
  belongs_to :state

  validates :net_income, numericality: { greater_than_or_equal_to: 0 }
end
