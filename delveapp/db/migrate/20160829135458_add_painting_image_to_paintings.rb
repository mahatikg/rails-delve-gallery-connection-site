class AddPaintingImageToPaintings < ActiveRecord::Migration[5.0]
  def up
    add_attachment :paintings, :painting_image
  end

  def down
    remove_attachment :paintings, :painting_image
  end

end
