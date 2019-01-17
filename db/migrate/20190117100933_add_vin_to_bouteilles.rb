class AddVinToBouteilles < ActiveRecord::Migration[5.2]
  def change
    add_reference :bouteilles, :vin, foreign_key: true
  end
end
