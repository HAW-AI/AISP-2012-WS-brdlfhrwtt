class AddBornAtToChildren < ActiveRecord::Migration
  def change
    add_column :children, :born_at, :datetime
  end
end
