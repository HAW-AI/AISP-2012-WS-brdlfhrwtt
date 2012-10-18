class Group < ActiveRecord::Base
  has_many :children_groups
  has_many :children, :through => :children_groups
  belongs_to :kindergarten
end
