# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170523200107) do

  create_table "categorizacoes", force: :cascade do |t|
    t.string   "nome"
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "encomendaprodutos", force: :cascade do |t|
    t.integer  "encomenda_id"
    t.integer  "produto_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "encomendaprodutos", ["encomenda_id"], name: "index_encomendaprodutos_on_encomenda_id"
  add_index "encomendaprodutos", ["produto_id"], name: "index_encomendaprodutos_on_produto_id"

  create_table "encomendas", force: :cascade do |t|
    t.integer  "endereco_id"
    t.datetime "dataentrega"
    t.datetime "datalimitepedido"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "encomendas", ["endereco_id"], name: "index_encomendas_on_endereco_id"

  create_table "enderecos", force: :cascade do |t|
    t.string   "logradouro"
    t.integer  "numero"
    t.string   "cep"
    t.string   "bairro"
    t.string   "municipio"
    t.string   "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "itempedidos", force: :cascade do |t|
    t.integer  "quantidade"
    t.integer  "pedido_id"
    t.integer  "produto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "itempedidos", ["pedido_id"], name: "index_itempedidos_on_pedido_id"
  add_index "itempedidos", ["produto_id"], name: "index_itempedidos_on_produto_id"

  create_table "pedidos", force: :cascade do |t|
    t.integer  "usuario_id"
    t.integer  "encomenda_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "pedidos", ["encomenda_id"], name: "index_pedidos_on_encomenda_id"
  add_index "pedidos", ["usuario_id"], name: "index_pedidos_on_usuario_id"

  create_table "produtos", force: :cascade do |t|
    t.integer  "categorizacao_id"
    t.integer  "unidade_id"
    t.string   "nome"
    t.string   "descricao"
    t.float    "valorunitario"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "produtos", ["categorizacao_id"], name: "index_produtos_on_categorizacao_id"
  add_index "produtos", ["unidade_id"], name: "index_produtos_on_unidade_id"

  create_table "unidades", force: :cascade do |t|
    t.string   "nome"
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true

end
