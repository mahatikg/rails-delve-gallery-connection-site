class Gallery < ApplicationRecord
  belongs_to :museum
  has_many :paintings
  has_many :artists, through: :paintings
end
