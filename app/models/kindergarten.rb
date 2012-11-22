class Kindergarten < ActiveRecord::Base
  attr_accessible :name, :state_id
  has_many :groups
  has_one :manager
  belongs_to :state

  validates :name, presence: true
end
