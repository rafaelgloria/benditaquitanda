class Endereco < ActiveRecord::Base

 def logradourocomnumero
    "#{self[:logradouro]} #{self[:numero]}"
  end

end
