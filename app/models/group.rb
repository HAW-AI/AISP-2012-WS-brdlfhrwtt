class Group < ActiveRecord::Base
  has_many :children_groups
  has_many :children, :through => :children_groups
  has_many :waitlists
  belongs_to :kindergarten

  validates :name, presence: true
  validates :limit, numericality: { greater_than_or_equal_to: 1 }
end
