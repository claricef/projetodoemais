class MessagesController < ApplicationController
	before_action :set_ong, only: [:new, :create]

	def new
		@message = Message.new
	end

	def index
		@messages = current_user&.ong.messages || current_user&.doador.messages
	end

	def create
		@message = Message.new(message_params)
		@message.doador = current_user.doador
		@message.ong = @ong

		if @message.save!
			redirect_to root_path, notice: 'Mensagem enviada!.'
		else
			render :new
		end
	end

	private

	def set_ong
		@ong = Ong.find(params[:ong_id])
	end

	def message_params
		params.require(:message).permit(:text)
	end
end
