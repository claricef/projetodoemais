class CreateOngs < ActiveRecord::Migration[5.2]
  def change
    create_table :ongs do |t|
      t.string :cnpj
      t.string :razao_social
      t.string :nome_fantasia
      t.string :endereco
      t.string :numero
      t.string :bairro
      t.string :cidade
      t.string :uf
      t.string :cep
      t.string :telefone
      t.text :bio
      t.references :user, polymorphic: true

      t.timestamps
    end
  end
end
