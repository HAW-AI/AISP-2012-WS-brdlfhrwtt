class Manager < User
  attr_accessible :name, :kindergarten_id

  belongs_to :kindergarten
  has_many :groups, :through => :kindergarten

  validates :name, presence: true
end
