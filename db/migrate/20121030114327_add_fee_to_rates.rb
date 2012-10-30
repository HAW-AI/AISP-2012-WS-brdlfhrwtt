class AddFeeToRates < ActiveRecord::Migration
  def change
    add_column :rates, :fee_id, :integer
  end
end
