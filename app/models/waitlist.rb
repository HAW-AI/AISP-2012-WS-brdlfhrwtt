class Waitlist < ActiveRecord::Base
  attr_accessible :position

  default_scope { order(Waitlist.arel_table[:position].asc) }

  belongs_to :child
  belongs_to :group
  has_one :kindergarten, through: :group
end
