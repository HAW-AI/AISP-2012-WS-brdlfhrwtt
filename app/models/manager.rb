class Manager < ActiveRecord::Base
  attr_accessible :name

  belongs_to :kindergarten

  validates :name, presence: true
end
