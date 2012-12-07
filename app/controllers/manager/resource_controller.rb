class Manager::ResourceController < Manager::BaseController
  inherit_resources

  def begin_of_association_chain
    current_user.kindergarten
  end
end
