class CreateDoadores < ActiveRecord::Migration[5.2]
  def change
    create_table :doadores do |t|
      t.string :nome
      t.string :rg
      t.string :cpf
      t.string :endereco
      t.string :numero
      t.string :bairro
      t.string :cidade
      t.string :uf
      t.string :cep
      t.string :telefone
      t.references :user, polymorphic: true

      t.timestamps
    end
  end
end
