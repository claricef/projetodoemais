json.extract! user, :id, :email, :senha, :created_at, :updated_at
json.url user_url(user, format: :json)
