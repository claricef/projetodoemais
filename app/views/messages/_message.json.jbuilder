json.extract! message, :id, :text, :ong_id, :doador_id, :created_at, :updated_at
json.url message_url(message, format: :json)
