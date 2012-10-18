class RenameChildrenIdToChildIdInChildrenGroups < ActiveRecord::Migration
  def change
    rename_column :children_groups, :children_id, :child_id
  end
end
