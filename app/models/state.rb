class State < ActiveRecord::Base
  attr_accessible :name

  has_many :rates

  validates :name, presence: true
end
