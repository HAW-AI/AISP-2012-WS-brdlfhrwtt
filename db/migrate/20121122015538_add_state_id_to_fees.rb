class AddStateIdToFees < ActiveRecord::Migration
  def change
    add_column :fees, :state_id, :integer
  end
end
