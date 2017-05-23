class CreateCategorizacoes < ActiveRecord::Migration
  def change
    create_table :categorizacoes do |t|
      t.string :nome
      t.string :descricao

      t.timestamps null: false
    end
  end
end
