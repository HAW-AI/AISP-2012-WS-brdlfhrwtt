class Waitlist < ActiveRecord::Base
  attr_accessible :position

  belongs_to :child
  belongs_to :group
end
