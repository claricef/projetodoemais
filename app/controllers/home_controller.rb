class HomeController < ApplicationController
  def index
     @doacoes = Doacao.all
     @ongs = Ong.all
     @doadores = Doador.all
   
  end


end
