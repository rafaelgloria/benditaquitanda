json.extract! endereco, :id, :logradouro, :numero, :cep, :bairro, :municipio, :estado, :created_at, :updated_at
json.url endereco_url(endereco, format: :json)
