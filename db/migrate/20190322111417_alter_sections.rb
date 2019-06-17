class AlterSections < ActiveRecord::Migration
  def change
    puts "***Adding an Index***"
    add_index("sections", "page_id")
  end
end
