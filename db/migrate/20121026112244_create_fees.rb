class CreateFees < ActiveRecord::Migration
  def change
    create_table :fees do |t|
      t.integer :care_time
      t.datetime :valid_at
      t.integer :max_age
      t.timestamps
    end
  end
end
