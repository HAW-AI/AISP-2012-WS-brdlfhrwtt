class RenameGroupsIdToGroupIdOnChildrenGroups < ActiveRecord::Migration
  def change
    rename_column :children_groups, :groups_id, :group_id
  end
end
