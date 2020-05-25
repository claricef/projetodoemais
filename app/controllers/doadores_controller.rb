class DoadoresController < ApplicationController
  before_action :set_doador, only: [:show, :edit, :update, :destroy]

  def index
    @doadores = Doador.all
  end

  def show
  end

  def new
    @doador = Doador.new
  end

  def edit
  end

  def create
    @doador = Doador.new(doador_params)
    values = params[:doador]
    @doador.user_type = "User"

    @user = User.new(email: values[:email], password: values[:password],
    password_confirmation: values[:passoword_confirmation], tipo: 0)

    @doador.user = @user

    if @doador.save! and @user.save!
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    respond_to do |format|
      if @doador.update(doador_params)
        format.html { redirect_to @doador, notice: 'Doador was successfully updated.' }
        format.json { render :show, status: :ok, location: @doador }
      else
        format.html { render :edit }
        format.json { render json: @doador.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @doador.destroy
    respond_to do |format|
      format.html { redirect_to doadores_url, notice: 'Doador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doador
      @doador = Doador.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def doador_params
      params.require(:doador).permit(:nome, :rg, :cpf, :endereco, :numero, :bairro, :cidade, :uf, :cep, :telefone, :image)
    end
end
