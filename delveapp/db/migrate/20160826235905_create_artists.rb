class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.boolean :contemporary? #if they are dead or alive
      t.string :life_span

      t.timestamps
    end
  end
end
