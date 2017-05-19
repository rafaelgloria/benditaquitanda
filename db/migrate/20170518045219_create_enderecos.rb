class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.string :logradouro
      t.integer :numero
      t.string :cep
      t.string :bairro
      t.string :municipio
      t.string :estado

      t.timestamps null: false
    end
  end
end
