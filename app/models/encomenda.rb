class Encomenda < ActiveRecord::Base
  belongs_to :endereco

   def encomenda_com_endereco
    "#{endereco.logradouro}, n° #{endereco.numero}"
  end
end
