class Manager < ActiveRecord::Base
  attr_accessible :name, :kindergarten_id

  belongs_to :kindergarten

  validates :name, presence: true
end
