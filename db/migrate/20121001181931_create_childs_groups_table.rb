class CreateChildsGroupsTable < ActiveRecord::Migration
  def up
    create_table :children_groups, :id => false do |t|
      t.references :children
      t.references :groups
    end
    add_index :children_groups, [:children_id, :groups_id]
    add_index :children_groups, [:groups_id, :children_id]
  end

  def down
    drop_table :children_groups
  end
end
