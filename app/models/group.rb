class Group < ActiveRecord::Base
  has_many :children_groups
  has_many :children, :through => :children_groups
  has_many :waitlists
  belongs_to :kindergarten
end
