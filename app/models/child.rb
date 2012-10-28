class Child < ActiveRecord::Base
  has_many :children_groups
  has_many :groups, :through => :children_groups
  has_many :waitlists
  belongs_to :parent

  validates :nick, presence: true
  validates :firstname, presence: true
  validates :lastname, presence: true
end
