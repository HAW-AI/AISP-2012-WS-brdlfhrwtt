class Child < ActiveRecord::Base
  attr_accessible :nick, :firstname, :lastname, :born_at, :disability, :gender, :token, :waiting_group_ids

  has_many :children_groups
  has_many :groups, :through => :children_groups
  has_many :waitlists, include: :group
  has_many :waiting_groups, :through => :waitlists, :source => :group
  has_many :accounts
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

  def token
    read_attribute(:token) or begin
      update_attributes!(token: SecureRandom.hex(13))
    rescue
      retry
    ensure
      read_attribute(:token)
    end
  end
end
