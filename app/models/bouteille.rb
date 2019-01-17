class Bouteille < ApplicationRecord
  belongs_to :cellar
  belongs_to :vin
end
