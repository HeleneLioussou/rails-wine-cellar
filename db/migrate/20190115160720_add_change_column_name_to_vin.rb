class AddChangeColumnNameToVin < ActiveRecord::Migration[5.2]
  def change
    rename_column :vins, :type, :categorie
    rename_column :vins, :localité, :localite
  end
end
