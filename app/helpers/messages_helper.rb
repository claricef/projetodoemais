module MessagesHelper
	def get_ong(ong_id)
		Ong.find(ong_id)
	end
end
