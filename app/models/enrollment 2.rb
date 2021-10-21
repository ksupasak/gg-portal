class Enrollment
  include Mongoid::Document
  field :program_id, type: BSON::ObjectId
  field :customer_id, type: BSON::ObjectId
  field :enrolled_at, type: Time
  
  
  belongs_to :program
  belongs_to :customer
    
    
end
