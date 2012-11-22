class Manager < User
  attr_accessible :name, :kindergarten_id

  belongs_to :kindergarten
  has_many :groups, :through => :kindergarten
  has_many :children, :through => :groups
  has_many :accounts, :through => :children

  validates :name, presence: true
end
