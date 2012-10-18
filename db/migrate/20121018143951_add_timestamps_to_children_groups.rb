class AddTimestampsToChildrenGroups < ActiveRecord::Migration
  def change
    change_table :children_groups do |t|
      t.timestamps
    end
  end
end
