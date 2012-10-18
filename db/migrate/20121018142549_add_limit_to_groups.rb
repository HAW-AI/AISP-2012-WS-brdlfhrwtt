class AddLimitToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :limit, :integer
  end
end
