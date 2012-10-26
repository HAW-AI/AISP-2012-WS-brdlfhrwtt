class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.integer :net_income
      t.integer :two_people
      t.integer :three_people
      t.integer :four_people
      t.integer :five_people
      t.integer :six_people

      t.timestamps
    end
  end
end
