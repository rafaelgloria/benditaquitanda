json.extract! pedido, :id, :usuario_id, :encomenda_id, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
