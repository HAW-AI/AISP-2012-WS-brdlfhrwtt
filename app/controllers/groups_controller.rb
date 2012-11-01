class GroupsController < ResourceController
  belongs_to :kindergarten, shallow: true
  custom_actions :resource => :waitlist
end
