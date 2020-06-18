class MessagesOngController < ApplicationController
  before_action :set_doador, only: [:new, :create]

  def index
  	@doadores = current_user&.ong.messages.select(:doador_id).distinct
  end

	def new
		ong = current_user&.ong
		@message = Message.new
		@messages = Message.where(doador_id: @doador.id, ong_id: ong&.id).order 'created_at'
	end

	def create
		@message = Message.new(message_params)
		@message.doador = @doador
		@message.ong = current_user&.ong

		if @message.save!
			redirect_to new_message_ong_path
		end
	end

	private

	def set_doador
		@doador = Doador.find(params[:id])
	end

	def message_params
		params.require(:message).permit(:text)
	end
end
