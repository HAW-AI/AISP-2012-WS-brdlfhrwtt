class CreateWaitlists < ActiveRecord::Migration
  def change
    create_table :waitlists do |t|
      t.references :group
      t.references :child
      t.integer :position
      t.timestamps
    end
  end
end
