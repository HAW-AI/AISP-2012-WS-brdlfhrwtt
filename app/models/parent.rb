class Parent < User
  has_many :children

  validates :name, presence: true
end
