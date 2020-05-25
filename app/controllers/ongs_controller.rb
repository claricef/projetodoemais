class OngsController < ApplicationController
  before_action :set_ong, only: [:show, :edit, :update, :destroy]

  # GET /ongs
  # GET /ongs.json
  def index
    @ongs = Ong.all
  end

  # GET /ongs/1
  # GET /ongs/1.json
  def show
    @ongs = Ong.all
  end

  # GET /ongs/new
  def new
    @ong = Ong.new
  end

  # GET /ongs/1/edit
  def edit
  end

  # POST /ongs
  # POST /ongs.json
  def create
    @ong = Ong.new(ong_params)
    values = params[:ong]
    @ong.user_type = "User"

    @user = User.new(email: values[:email], password: values[:password],
    password_confirmation: values[:passoword_confirmation], tipo: 1)

    @ong.user = @user

    if @ong.save! and @user.save!
      redirect_to root_path
    else
      render :new
    end
  end

  # PATCH/PUT /ongs/1
  # PATCH/PUT /ongs/1.json
  def update
    respond_to do |format|
      if @ong.update(ong_params)
        format.html { redirect_to @ong, notice: 'Ong was successfully updated.' }
        format.json { render :show, status: :ok, location: @ong }
      else
        format.html { render :edit }
        format.json { render json: @ong.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ongs/1
  # DELETE /ongs/1.json
  def destroy
    @ong.destroy
    respond_to do |format|
      format.html { redirect_to ongs_url, notice: 'Ong was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ong
      @ong = Ong.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ong_params
      params.require(:ong).permit(:cnpj, :razao_social, :nome_fantasia, :endereco, :numero, :bairro, :cidade, :uf, :cep, :telefone, :bio,:image, :user_id)
    end
end
