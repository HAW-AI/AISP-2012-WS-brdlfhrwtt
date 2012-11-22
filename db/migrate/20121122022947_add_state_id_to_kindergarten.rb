class AddStateIdToKindergarten < ActiveRecord::Migration
  def change
    add_column :kindergartens, :state_id, :integer
  end
end
