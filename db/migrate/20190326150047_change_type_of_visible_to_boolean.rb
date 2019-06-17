class ChangeTypeOfVisibleToBoolean < ActiveRecord::Migration
  def up
    change_column :subjects, :visible, :boolean, :default => false 
  end
  def down
    change_column :subjects, :visible, :integer, :default => false
  end
end
