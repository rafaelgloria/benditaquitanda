class CreateEncomendas < ActiveRecord::Migration
  def change
    create_table :encomendas do |t|
      t.references :endereco, index: true, foreign_key: true
      t.datetime :dataentrega
      t.datetime :datalimitepedido

      t.timestamps null: false
    end
  end
end
