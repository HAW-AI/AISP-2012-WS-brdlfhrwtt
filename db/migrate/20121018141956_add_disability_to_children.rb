class AddDisabilityToChildren < ActiveRecord::Migration
  def change
    add_column :children, :disability, :boolean, default: false
  end
end
