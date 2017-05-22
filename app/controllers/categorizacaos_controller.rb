class CategorizacaosController < ApplicationController
  before_action :set_categorizacao, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!

  # GET /categorizacaos
  # GET /categorizacaos.json
  def index
    @categorizacaos = Categorizacao.all
  end

  # GET /categorizacaos/1
  # GET /categorizacaos/1.json
  def show
  end

  # GET /categorizacaos/new
  def new
    @categorizacao = Categorizacao.new
  end

  # GET /categorizacaos/1/edit
  def edit
  end

  # POST /categorizacaos
  # POST /categorizacaos.json
  def create
    @categorizacao = Categorizacao.new(categorizacao_params)

    respond_to do |format|
      if @categorizacao.save
        format.html { redirect_to @categorizacao, notice: 'Categorizacao was successfully created.' }
        format.json { render :show, status: :created, location: @categorizacao }
      else
        format.html { render :new }
        format.json { render json: @categorizacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categorizacaos/1
  # PATCH/PUT /categorizacaos/1.json
  def update
    respond_to do |format|
      if @categorizacao.update(categorizacao_params)
        format.html { redirect_to @categorizacao, notice: 'Categorizacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @categorizacao }
      else
        format.html { render :edit }
        format.json { render json: @categorizacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categorizacaos/1
  # DELETE /categorizacaos/1.json
  def destroy
    @categorizacao.destroy
    respond_to do |format|
      format.html { redirect_to categorizacaos_url, notice: 'Categorizacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categorizacao
      @categorizacao = Categorizacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def categorizacao_params
      params.require(:categorizacao).permit(:nome, :descricao)
    end
end
