class UsuarioscompletoController < ApplicationController
  before_action :set_usuariocompleto, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!

  # GET /usuarios
  # GET /usuarios.json
  def index
    @usuarios = Usuario.all
    authorize @usuarios
  end

  # GET /usuarios/1
  # GET /usuarios/1.json
  def show
  end

  # GET /usuarios/new
  def new
    @usuariocompleto = Usuario.new
  end

  # GET /usuarios/1/edit
  def edit
  end

  # POST /usuarios
  # POST /usuarios.json
  def create
    @usuariocompleto = Usuario.new(usuariocompleto_params)

    respond_to do |format|
      if @usuariocompleto.save
        format.html { redirect_to @usuariocompleto, notice: 'Usuário was successfully created.' }
        format.json { render :show, status: :created, location: @usuariocompleto }
      else
        format.html { render :new }
        format.json { render json: @usuariocompleto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuarios/1
  # PATCH/PUT /usuarios/1.json
  def update
    respond_to do |format|
      if @usuariocompleto.update(usuariocompleto)
        format.html { redirect_to @usuariocompleto, notice: 'Usuário was successfully updated.' }
        format.json { render :show, status: :ok, location: @usuariocompleto }
      else
        format.html { render :edit }
        format.json { render json: @usuariocompleto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuarios/1
  # DELETE /usuarios/1.json
  def destroy
    @usuariocompleto.destroy
    respond_to do |format|
      format.html { redirect_to usuarioscompleto_url, notice: 'Usuário was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuariocompleto
      @usuariocompleto = Usuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuariocompleto_params
      params.require(:usuariocompleto).permit(:email)
    end
end
