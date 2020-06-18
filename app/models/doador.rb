class Doador < ApplicationRecord
  belongs_to :user , polymorphic: true
  has_many :messages
  
  has_one_attached :image


  validates_presence_of :nome, message: 'não pode ser deixado em branco'
  validates_presence_of :rg, message: 'não pode ser deixado em branco'
  validates_presence_of :cpf, message: 'não pode ser deixado em branco'
  validates_presence_of :endereco, message: 'não pode ser deixado em branco'
  validates_presence_of :numero, message: 'não pode ser deixado em branco'
  validates_presence_of :bairro, message: 'não pode ser deixado em branco'
  validates_presence_of :cidade, message: 'não pode ser deixado em branco'
  validates_presence_of :uf, message: 'não pode ser deixado em branco'
  validates_presence_of :cep, message: 'não pode ser deixado em branco'
  validates_presence_of :telefone, message: 'não pode ser deixado em branco'
end
