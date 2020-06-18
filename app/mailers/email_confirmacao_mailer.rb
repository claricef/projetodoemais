class EmailConfirmacaoMailer < ApplicationMailer
	def email_mensagem_enviada(message)
		@message = message
		mail(to: @ong.email, subject: 'Você tem uma nova mensagem')
	end
end
