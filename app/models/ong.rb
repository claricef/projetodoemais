class Ong < ApplicationRecord
	belongs_to :user , polymorphic: true
	has_many :doacoes
  	has_many :messages

	has_one_attached :image



  validates_presence_of :cnpj, message: 'não pode ser deixado em branco'
  validates_presence_of :razao_social, message: 'não pode ser deixado em branco'
  validates_presence_of :nome_fantasia, message: 'não pode ser deixado em branco'
  validates_presence_of :endereco, message: 'não pode ser deixado em branco'
  validates_presence_of :numero, message: 'não pode ser deixado em branco'
  validates_presence_of :bairro, message: 'não pode ser deixado em branco'
  validates_presence_of :cidade, message: 'não pode ser deixado em branco'
  validates_presence_of :uf, message: 'não pode ser deixado em branco'
  validates_presence_of :cep, message: 'não pode ser deixado em branco'
end
