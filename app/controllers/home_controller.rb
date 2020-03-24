class HomeController < ApplicationController
  def index
     @doacoes = Doacao.all
  end
end
