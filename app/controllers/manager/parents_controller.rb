class Manager::ParentsController < Manager::ResourceController
  belongs_to :kindergarten, shallow: true
  custom_actions :resource => :waitlist

  def index
    @kindergarten = current_user.kindergarten
    @parents = Parent.all
  end
end
