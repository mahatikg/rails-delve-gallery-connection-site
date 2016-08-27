class CreateMuseums < ActiveRecord::Migration[5.0]
  def change
    create_table :museums do |t|
      t.string :name
      t.string :city

      t.timestamps
    end
  end
end
