class Product
  include Mongoid::Document
  field :name, type: String
  field :code, type: String
  field :description, type: String
  field :cost, type: Float
  field :price, type: Float
  field :unit, type: String
  field :active, type: Mongoid::Boolean
  field :group_id, type: BSON::ObjectId
  field :type, type: String
  
  
  belongs_to :group, :foreign_key=>'group_id', :class_name=>'ProductGroup'
    
end
