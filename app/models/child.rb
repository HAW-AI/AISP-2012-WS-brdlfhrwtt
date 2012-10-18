class Child < ActiveRecord::Base
  has_many :children_groups
  has_many :groups, :through => :children_groups
  has_many :waitlists
  attr_accessible :name
end
