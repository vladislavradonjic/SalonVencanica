class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.date :app_date
      t.time :app_time
      t.integer :app_status

      t.timestamps
    end
  end
end
