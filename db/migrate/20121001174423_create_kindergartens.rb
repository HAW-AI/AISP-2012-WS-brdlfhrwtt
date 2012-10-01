class CreateKindergartens < ActiveRecord::Migration
  def change
    create_table :kindergartens do |t|
      t.string :name

      t.timestamps
    end
  end
end
