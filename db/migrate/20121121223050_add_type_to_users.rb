class AddTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :type, :string, default: 'Parent'
    add_column :users, :name, :string
    add_column :users, :kindergarten_id, :integer
  end
end
