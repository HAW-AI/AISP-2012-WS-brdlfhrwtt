class Parent::ChildrenController < ResourceController
  def index
    @children = view_context.current_user.children
    super
  end
end
