class AddSlugToDresses < ActiveRecord::Migration[5.2]
  def change
    add_column :dresses, :slug, :string
    add_index :dresses, :slug, unique: true
  end
end
