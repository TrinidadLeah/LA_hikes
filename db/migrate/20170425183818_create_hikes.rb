class CreateHikes < ActiveRecord::Migration[5.0]
  def change
    create_table :hikes do |t|
      t.string :image_uri
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
