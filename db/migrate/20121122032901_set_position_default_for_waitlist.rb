class SetPositionDefaultForWaitlist < ActiveRecord::Migration
  def up
    change_column :waitlists, :position, :integer, default: 1
  end

  def down
  end
end
