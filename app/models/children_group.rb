class ChildrenGroup < ActiveRecord::Base
  belongs_to :child
  belongs_to :group
end
