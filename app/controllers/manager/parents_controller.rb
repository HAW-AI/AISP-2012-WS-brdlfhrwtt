class Manager::ParentsController < Manager::ResourceController
  belongs_to :kindergarten, shallow: true
  custom_actions :resource => :waitlist

  def index
    @parents = Parent.scoped
  end
end
