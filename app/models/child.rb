class Child < ActiveRecord::Base
  has_many :children_groups
  has_many :groups, :through => :children_groups
  attr_accessible :name
end
