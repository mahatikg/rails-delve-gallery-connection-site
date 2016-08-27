class CreateGalleries < ActiveRecord::Migration[5.0]
  def change
    create_table :galleries do |t|
      t.string :name
      t.integer :museum_id
      t.string :gallery_category #type of art in it
      #t.string :wall_chat_num

      t.timestamps
    end
  end
end
