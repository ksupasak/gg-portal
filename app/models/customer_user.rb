class CustomerUser
  include Mongoid::Document
  field :customer_id, type: BSON::ObjectId
  field :user_id, type: BSON::ObjectId
  field :registered_at, type: Time
  
    belongs_to :customer
    belongs_to :user
      
  
end
