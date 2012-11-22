class State < ActiveRecord::Base
  attr_accessible :name

  has_many :fees

  validates :name, presence: true
end
