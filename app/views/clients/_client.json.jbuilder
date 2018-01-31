json.extract! client, :id, :name, :callback_url, :created_at, :updated_at
json.url client_url(client, format: :json)
