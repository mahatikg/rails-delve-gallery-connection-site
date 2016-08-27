class Museum < ApplicationRecord
  has_many :galleries
  has_many :paintings, through: :galleries
  has_many :artists, through: :paintings
  #do we need and galleries after paintings?
end
