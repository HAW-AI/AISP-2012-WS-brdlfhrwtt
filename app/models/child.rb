class Child < ActiveRecord::Base
  attr_accessible :nick, :firstname, :lastname, :born_at, :disability, :gender

  has_many :children_groups
  has_many :groups, :through => :children_groups
  has_many :waitlists, include: :group
  belongs_to :parent

  validates :nick, presence: true
  validates :firstname, presence: true
  validates :lastname, presence: true

  def name
    if nick.present?
      "#{full_name} (#{nick})"
    else
      full_name
    end
  end

  def full_name
    [lastname, firstname].join(', ')
  end
end
