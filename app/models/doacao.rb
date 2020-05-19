class Doacao < ApplicationRecord
	belongs_to :ong
	has_one_attached:image
end
