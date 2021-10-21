json.extract! lab_order_item, :id, :lab_order_id, :module_id, :module_name, :status, :start_at, :stop_at, :note, :transaction_item_id, :created_at, :updated_at
json.url lab_order_item_url(lab_order_item, format: :json)
