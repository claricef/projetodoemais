json.extract! doacao, :id, :item, :status, :obs, :user_id, :created_at, :updated_at
json.url doacao_url(doacao, format: :json)
