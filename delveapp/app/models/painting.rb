class Painting < ApplicationRecord
  belongs_to :gallery
  belongs_to :artist

  has_attached_file :painting_image, styles: { :medium => "500x" }
  validates_attachment_content_type :painting_image, content_type: /\Aimage\/.*\z/
  validates :title, presence: true

  def artist_name
    self.artist.name
  end


end
