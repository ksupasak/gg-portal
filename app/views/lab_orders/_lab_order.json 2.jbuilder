json.extract! lab_order, :id, :customer_id, :date, :status, :note, :created_at, :updated_at
json.url lab_order_url(lab_order, format: :json)
