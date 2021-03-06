class CreatePages < ActiveRecord::Migration
  def up
    create_table :pages do |t|
      t.integer "subject_id"
      t.string "name"
      t.string "permalink"
      t.integer "position"
      t.boolean "visible", :default => false
    
      t.timestamps null: false
    end
  end
  
  def down
    drop_table :pages
  end
end
