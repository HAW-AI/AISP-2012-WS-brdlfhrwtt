class Group < ActiveRecord::Base
  attr_accessible :name, :limit, :starts_on, :ends_on, :waitlists_attributes

  has_many :children_groups
  has_many :children, :through => :children_groups
  has_many :waitlists, :include => :child
  has_many :waiting_children, :through => :waitlists, :source => :child
  belongs_to :kindergarten

  accepts_nested_attributes_for :waitlists

  validates :name, presence: true
  validates :limit, numericality: { greater_than_or_equal_to: 1 }
  validates :starts_on, date: { before: :ends_on }
  validates :ends_on, date: { after: :starts_on }
end
