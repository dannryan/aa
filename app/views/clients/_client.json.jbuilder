json.extract! client, :id, :lastname, :firstname, :holding, :created_at, :updated_at
json.url client_url(client, format: :json)