class Revenue
  include Mongoid::Document

  field :date, type: Date
  field :amount, type: Float
  field :type, type: String 
  field :description, type: String 

  #falta realciones con user
end
