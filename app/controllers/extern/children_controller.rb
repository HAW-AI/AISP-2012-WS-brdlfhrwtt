class Extern::ChildrenController < Extern::BaseController
  skip_before_filter :authenticate

  def show
    @child = Child.where(token: params[:token]).first or raise ActiveRecord::RecordNotFound
  end
end
