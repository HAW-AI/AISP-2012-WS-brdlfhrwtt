class Manager::ParentsController < Manager::ResourceController
  custom_actions :resource => :waitlist

  def index
    @parents = Parent.scoped
  end

protected
  def begin_of_association_chain
    @kindergarten
  end
end
