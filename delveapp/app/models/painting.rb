class Painting < ApplicationRecord
  belongs_to :gallery
  belongs_to :artist

  validates :title, presence: true 


end
