class CreateDresses < ActiveRecord::Migration[5.2]
  def change
    create_table :dresses do |t|
      t.string :name
      t.string :short_desc
      t.text :long_desc
      t.text :kwrds
      t.text :main_img
      t.text :main_thumb

      t.timestamps
    end
  end
end
