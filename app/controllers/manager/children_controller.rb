class Manager::ChildrenController < Manager::ResourceController
  def new
    @child = Child.new
  end
end
