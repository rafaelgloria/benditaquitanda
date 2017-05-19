class Pedido < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :encomenda
  has_many :itempedidos
end
