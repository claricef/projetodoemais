class HomeController < ApplicationController
  def index
     @doacoes = Doacao.all
     @ongs = Ong.all
     @doadores = Doador.all
  end

  def welcome
  	@user = current_user.ong if current_user.ong.present?
  	@user = current_user.doador if current_user.doador.present?
  end
end
