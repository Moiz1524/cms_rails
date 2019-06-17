class AlterPages < ActiveRecord::Migration
  def change
    puts "***Adding an Index***"
    add_index("pages", "permalink")
    add_index("pages", "subject_id")
  end
end
