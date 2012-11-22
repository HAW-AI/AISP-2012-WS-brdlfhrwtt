class Manager < User
  attr_accessible :name, :kindergarten_id, :email, :password

  belongs_to :kindergarten
  has_many :groups, :through => :kindergarten
  has_many :children, :through => :groups

  validates :name, presence: true
end
