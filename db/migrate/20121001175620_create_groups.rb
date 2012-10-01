class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.belongs_to :kindergarten

      t.timestamps
    end
    add_index :groups, :kindergarten_id
  end
end
