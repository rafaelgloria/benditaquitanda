json.extract! produto, :id, :categorizacao_id, :unidade_id, :nome, :descricao, :valorunitario, :created_at, :updated_at
json.url produto_url(produto, format: :json)
