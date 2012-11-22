class Manager::ChildrenController < Manager::ResourceController
  belongs_to :group, polymorphic: true, optional: true
end
