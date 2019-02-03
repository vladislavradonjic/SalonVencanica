json.extract! appointment, :id, :name, :email, :phone, :app_date, :app_time, :app_status, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
