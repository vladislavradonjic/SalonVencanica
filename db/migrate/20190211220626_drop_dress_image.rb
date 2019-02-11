class DropDressImage < ActiveRecord::Migration[5.2]
  def change
  	drop_table :dress_images do |tbl|
  		t.text image
  	end
  end
end
