class Produto < ActiveRecord::Base
  belongs_to :categorizacao
  belongs_to :unidade
end
