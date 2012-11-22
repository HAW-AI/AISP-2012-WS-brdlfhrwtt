class State < ActiveRecord::Base
  attr_accessible :name

  has_many :fees
  has_many :kindergartens

  validates :name, presence: true
end
