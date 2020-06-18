module MessagesOngHelper
	def get_doador(doador_id)
		Doador.find(doador_id)
	end
end
