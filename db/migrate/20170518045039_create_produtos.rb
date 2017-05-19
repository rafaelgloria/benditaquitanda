class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.references :categorizacao, index: true, foreign_key: true
      t.references :unidade, index: true, foreign_key: true
      t.string :nome
      t.string :descricao
      t.float :valorunitario

      t.timestamps null: false
    end
  end
end
