class AddStatutToCaves < ActiveRecord::Migration[5.2]
  def change
    add_column :bouteilles, :statut, :string
  end
end
