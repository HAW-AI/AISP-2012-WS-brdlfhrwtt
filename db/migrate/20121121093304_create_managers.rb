class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.string :name
      t.integer :kindergarten_id

      t.timestamps
    end
  end
end
