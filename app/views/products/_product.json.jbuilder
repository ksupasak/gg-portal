json.extract! product, :id, :name, :code, :description, :cost, :price, :unit, :active, :group_id, :type, :created_at, :updated_at
json.url product_url(product, format: :json)
