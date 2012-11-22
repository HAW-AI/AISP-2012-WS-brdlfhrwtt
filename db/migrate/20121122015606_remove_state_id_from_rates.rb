class RemoveStateIdFromRates < ActiveRecord::Migration
  def change
    remove_column :rates, :state_id
  end
end
