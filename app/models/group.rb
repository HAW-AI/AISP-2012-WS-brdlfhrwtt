class Group < ActiveRecord::Base
  belongs_to :kindergarten
  attr_accessible :name
end
