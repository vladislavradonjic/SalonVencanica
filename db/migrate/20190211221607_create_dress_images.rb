class CreateDressImages < ActiveRecord::Migration[5.2]
  def change
    create_table :dress_images do |t|
      t.text :image
      t.references :dress, foreign_key: true

      t.timestamps
    end
  end
end
