class CreateBouteilles < ActiveRecord::Migration[5.2]
  def change
    create_table :bouteilles do |t|
      t.integer :millesime
      t.integer :apogee

      t.timestamps
    end
  end
end
