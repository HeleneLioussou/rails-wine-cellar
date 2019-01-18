class Vin < ApplicationRecord
  has_many :bouteilles

  def complete_denomination
    "#{categorie.upcase} #{localite.upcase} #{appellation} #{domaine} #{couleur}"
  end

end


