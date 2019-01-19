class AddUserToCellars < ActiveRecord::Migration[5.2]
  def change
    add_reference :cellars, :user, foreign_key: true
  end
end
