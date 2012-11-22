class AddStateIdToRates < ActiveRecord::Migration
  def change
    add_column :rates, :state_id, :integer
  end
end
