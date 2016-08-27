class CreatePaintings < ActiveRecord::Migration[5.0]
  def change
    create_table :paintings do |t|
      t.string :title
      t.integer :artist_id
      t.integer :gallery_id
      t.string :date
      t.string :movement
      # t.float :net_worth

      t.timestamps
    end
  end
end
