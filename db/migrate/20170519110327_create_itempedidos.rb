class CreateItempedidos < ActiveRecord::Migration
  def change
    create_table :itempedidos do |t|
      t.integer :quantidade
      t.references :pedido, index: true, foreign_key: true
      t.references :produto, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
