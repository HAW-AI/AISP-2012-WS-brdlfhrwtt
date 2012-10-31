class ChangeBornAtToDateOnChildren < ActiveRecord::Migration
  def change
    change_column :children, :born_at, :date
  end
end
