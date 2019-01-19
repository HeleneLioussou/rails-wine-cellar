class Cellar < ApplicationRecord
  has_many :bouteilles
  belongs_to :user
end
