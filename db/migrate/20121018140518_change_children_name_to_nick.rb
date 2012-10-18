class ChangeChildrenNameToNick < ActiveRecord::Migration
  def change
    rename_column :children, :name, :nick
  end
end
