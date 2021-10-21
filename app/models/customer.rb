class Customer
  include Mongoid::Document
  field :name, type: String
  field :title, type: String
  field :short, type: String
  field :address, type: String
  field :zipcode, type: String
  field :phone, type: String
  field :email, type: String
  field :website, type: String
  field :contact_name, type: String
  field :active, type: Mongoid::Boolean
  field :registered_at, type: Time
  field :logo, type: String
  field :commercial_name, type: String
  field :commercial_address, type: String
  field :tax_id, type: String
  field :group_id, type: BSON::ObjectId
  field :user_id, type: BSON::ObjectId
  
  belongs_to :user
  belongs_to :group, :foreign_key=>'group_id', :class_name=>'CustomerGroup'
 
  has_many :enrollments
     
end
