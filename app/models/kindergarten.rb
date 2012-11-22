class Kindergarten < ActiveRecord::Base
  attr_accessible :name
  has_many :groups
  has_many :children, :through => :groups
  has_one :manager

  validates :name, presence: true
end
