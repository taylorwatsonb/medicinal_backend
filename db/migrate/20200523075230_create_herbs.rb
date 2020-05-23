class CreateHerbs < ActiveRecord::Migration[6.0]
  def change
    create_table :herbs do |t|
      t.string :name
      t.string :description
      t.string :image_url
      t.integer :nature_id

      t.timestamps
    end
  end
end
