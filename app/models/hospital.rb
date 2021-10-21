class Hospital
  include Mongoid::Document
  field :customer_id, type: String
  field :name, type: String
  field :address, type: String
  field :country, type: String
  field :phone, type: String
  field :zipcode, type: String
end
