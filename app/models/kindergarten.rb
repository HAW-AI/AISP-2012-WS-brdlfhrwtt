class Kindergarten < ActiveRecord::Base
  attr_accessible :name, :state_id
  has_many :groups
  has_many :children, :through => :groups
  has_many :accounts, :through => :children
  has_one :manager
  belongs_to :state

  validates :name, presence: true
end
