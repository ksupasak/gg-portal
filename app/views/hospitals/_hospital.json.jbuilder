json.extract! hospital, :id, :customer_id, :name, :address, :country, :phone, :zipcode, :created_at, :updated_at
json.url hospital_url(hospital, format: :json)
