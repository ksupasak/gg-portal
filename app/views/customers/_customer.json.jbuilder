json.extract! customer, :id, :name, :title, :short, :address, :zipcode, :phone, :email, :website, :contact_name, :active, :registered_at, :logo, :commercial_name, :commercial_address, :tax_id, :group_id, :created_at, :updated_at
json.url customer_url(customer, format: :json)
