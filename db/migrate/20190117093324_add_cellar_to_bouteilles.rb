class AddCellarToBouteilles < ActiveRecord::Migration[5.2]
  def change
    add_reference :bouteilles, :cellar, foreign_key: true
  end
end
