class MessagesController < ApplicationController
	before_action :set_ong, only: [:new, :create]

	def index
		@ongs = current_user&.doador.messages.select(:ong_id).distinct
	end

	def new
		doador = current_user&.doador
		@message = Message.new
		@messages = Message.where(doador_id: doador.id, ong_id: @ong.id).order 'created_at'
	end

	def create
		@message = Message.new(message_params)
		@message.origin = current_user.doador&.nome
		@message.doador = current_user.doador
		@message.ong = @ong

		if @message.save!
			redirect_to new_message_path
		end
	end

	private

	def set_ong
		@ong = Ong.find(params[:id])
	end

	def message_params
		params.require(:message).permit(:text)
	end
end
