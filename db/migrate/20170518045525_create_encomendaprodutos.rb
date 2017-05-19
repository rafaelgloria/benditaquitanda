class CreateEncomendaprodutos < ActiveRecord::Migration
  def change
    create_table :encomendaprodutos do |t|
      t.references :encomenda, index: true, foreign_key: true
      t.references :produto, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
