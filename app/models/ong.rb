class Ong < ApplicationRecord
	belongs_to :user , polymorphic: true
	has_many :doacoes

	has_one_attached :image
end
