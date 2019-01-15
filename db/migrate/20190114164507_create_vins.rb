class CreateVins < ActiveRecord::Migration[5.2]
  def change
    create_table :vins do |t|
      t.string :type
      t.string :appellation
      t.string :contenance
      t.string :couleur
      t.string :localité
      t.string :domaine

      t.timestamps
    end
  end
end
