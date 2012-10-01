class Group < ActiveRecord::Base
  belongs_to :kindergarten
  has_and_belongs_to_many :children
  attr_accessible :name
end
