class Encomenda < ActiveRecord::Base
  belongs_to :endereco

   def encomenda_com_endereco
    "#{endereco.logradouro}, n° #{endereco.numero} - #{dataentrega.strftime("%d/%m/%Y às %H:%M")}"
  end
end
