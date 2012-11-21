class Parent::ResourceController < Parent::BaseController
  inherit_resources

  def begin_of_association_chain
    current_user
  end
end
