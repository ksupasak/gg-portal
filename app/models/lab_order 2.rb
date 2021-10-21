class LabOrder
  include Mongoid::Document
  field :customer_id, type: String
  field :date, type: Time
  field :status, type: String
  field :note, type: String
end
