class Painting < ApplicationRecord
  belongs_to :gallery
  belongs_to :artist

  validates :title, presence: true

  def artist_name
    self.artist.name
  end


end
