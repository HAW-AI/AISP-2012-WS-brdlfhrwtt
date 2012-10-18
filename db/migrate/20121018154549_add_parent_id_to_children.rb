class AddParentIdToChildren < ActiveRecord::Migration
  def change
    change_table :children do |t|
      t.references :parent
    end
  end
end
