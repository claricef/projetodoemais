class Doacao < ApplicationRecord
	belongs_to :ong
	has_one_attached:image

	validates_presence_of :item, message: 'não pode ser deixado em branco'
	validates_presence_of :obs, message: 'não pode ser deixado em branco'
	validates_presence_of :status, message: 'não pode ser deixado em branco'



end
