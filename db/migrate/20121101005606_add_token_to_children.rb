class AddTokenToChildren < ActiveRecord::Migration
  def change
    add_column :children, :token, :string
  end
end
