class Encomendaproduto < ActiveRecord::Base
  belongs_to :encomenda
  belongs_to :produto
end
