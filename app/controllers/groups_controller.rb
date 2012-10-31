class GroupsController < ResourceController
  belongs_to :kindergarten, shallow: true
end
