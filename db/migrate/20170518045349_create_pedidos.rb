class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.references :usuario, index: true, foreign_key: true
      t.references :encomenda, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
