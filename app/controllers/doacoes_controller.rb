class DoacoesController < ApplicationController
  before_action :set_doacao, only: [:show, :edit, :update, :destroy]

  # GET /doacoes
  # GET /doacoes.json
  def index
    @doacoes = Doacao.all
  end

  # GET /doacoes/1
  # GET /doacoes/1.json
  def show
  end

  # GET /doacoes/new
  def new
    @doacao = Doacao.new
  end

  # GET /doacoes/1/edit
  def edit
  end

  # POST /doacoes
  # POST /doacoes.json
  def create
    @doacao = Doacao.new(doacao_params)

    respond_to do |format|
      if @doacao.save
        format.html { redirect_to @doacao, notice: 'Doacao was successfully created.' }
        format.json { render :show, status: :created, location: @doacao }
      else
        format.html { render :new }
        format.json { render json: @doacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doacoes/1
  # PATCH/PUT /doacoes/1.json
  def update
    respond_to do |format|
      if @doacao.update(doacao_params)
        format.html { redirect_to @doacao, notice: 'Doacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @doacao }
      else
        format.html { render :edit }
        format.json { render json: @doacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doacoes/1
  # DELETE /doacoes/1.json
  def destroy
    @doacao.destroy
    respond_to do |format|
      format.html { redirect_to doacoes_url, notice: 'Doacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doacao
      @doacao = Doacao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def doacao_params
      params.require(:doacao).permit(:item, :status, :obs, :user_id)
    end
end
