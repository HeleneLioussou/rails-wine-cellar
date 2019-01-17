class Vin < ApplicationRecord
  has_many :bouteilles

  def complete_denomination
    "#{appellation} - #{domaine} "
  end

end
