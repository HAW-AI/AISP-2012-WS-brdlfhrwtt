module Parent::BaseHelper
  # only keep this until we have proper auth support
  def current_user
    Parent.first
  end
end