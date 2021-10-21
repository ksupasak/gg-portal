class Program
  include Mongoid::Document
  field :name, type: String
  field :title, type: String
  field :description, type: String
  field :active, type: Mongoid::Boolean
  field :sort_order, type: Integer
end
