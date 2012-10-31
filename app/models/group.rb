class Group < ActiveRecord::Base
  attr_accessible :name, :limit, :starts_on, :ends_on

  has_many :children_groups
  has_many :children, :through => :children_groups
  has_many :waitlists
  has_many :waiting_children, :through => :waitlists, :source => :child
  belongs_to :kindergarten

  validates :name, presence: true
  validates :limit, numericality: { greater_than_or_equal_to: 1 }
  validates :starts_on, date: { before: :ends_on }
  validates :ends_on, date: { after: :starts_on }
end
