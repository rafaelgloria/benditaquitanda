class CreateCategorizacaos < ActiveRecord::Migration
  def change
    create_table :categorizacaos do |t|
      t.string :nome
      t.string :descricao

      t.timestamps null: false
    end
  end
end
