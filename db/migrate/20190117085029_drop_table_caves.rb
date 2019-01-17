class DropTableCaves < ActiveRecord::Migration[5.2]
  def change
       drop_table :caves
  end
end
