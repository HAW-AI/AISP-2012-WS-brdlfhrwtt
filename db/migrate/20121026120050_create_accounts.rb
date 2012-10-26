class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.boolean :day_care_coupon
      t.references :child
      t.integer :net_income
      t.integer :person_count
      t.integer :child_count
      t.integer :birth_sequence_position
      t.boolean :free_preschool_year

      t.timestamps
    end
  end
end
