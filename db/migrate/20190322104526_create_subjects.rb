class CreateSubjects < ActiveRecord::Migration
  def up
    create_table :subjects do |t|
      t.column "name", :string, :limit => 20
      t.integer "position"
      t.integer "visible", :default => false
      
      t.timestamps null: false
    end
  end
  
  def down 
    drop_table :subjects
  end
end
