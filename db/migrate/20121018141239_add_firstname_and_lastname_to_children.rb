class AddFirstnameAndLastnameToChildren < ActiveRecord::Migration
  def change
    add_column :children, :firstname, :string
    add_column :children, :lastname, :string
  end
end
