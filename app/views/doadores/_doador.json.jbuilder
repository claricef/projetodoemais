json.extract! doador, :id, :nome, :rg, :cpf, :endereco, :numero, :bairro, :cidade, :uf, :cep, :telefone, :user_id, :created_at, :updated_at
json.url doador_url(doador, format: :json)
