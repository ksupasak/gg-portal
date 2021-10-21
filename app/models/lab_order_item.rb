class LabOrderItem
  include Mongoid::Document
  field :lab_order_id, type: String
  field :module_id, type: String
  field :module_name, type: String
  field :status, type: String
  field :start_at, type: Time
  field :stop_at, type: Time
  field :note, type: String
  field :transaction_item_id, type: String
end
