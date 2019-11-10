class Revenue
  include Mongoid::Document

  field :amount_value, type: Integer
  field :date, type: Time
  field :description, type: String

  field :type, type: String #Esto puede ser ingreso o gasto
  ## relation with categoría and cuenta
end