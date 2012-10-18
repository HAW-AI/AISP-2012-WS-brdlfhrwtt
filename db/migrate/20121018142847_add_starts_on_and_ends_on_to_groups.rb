class AddStartsOnAndEndsOnToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :starts_on, :time
    add_column :groups, :ends_on, :time
  end
end
