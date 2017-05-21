class Pedido < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :encomenda
  has_many :itempedidos

  accepts_nested_attributes_for :itempedidos
end
