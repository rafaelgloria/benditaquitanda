class EncomendaprodutosController < ApplicationController
  before_action :set_encomendaproduto, only: [:show, :edit, :update, :destroy]

  # GET /encomendaprodutos
  # GET /encomendaprodutos.json
  def index
    @encomendaprodutos = Encomendaproduto.all
  end

  # GET /encomendaprodutos/1
  # GET /encomendaprodutos/1.json
  def show
  end

  # GET /encomendaprodutos/new
  def new
    @encomendaproduto = Encomendaproduto.new
  end

  # GET /encomendaprodutos/1/edit
  def edit
  end

  # POST /encomendaprodutos
  # POST /encomendaprodutos.json
  def create
    @encomendaproduto = Encomendaproduto.new(encomendaproduto_params)

    respond_to do |format|
      if @encomendaproduto.save
        format.html { redirect_to @encomendaproduto, notice: 'Encomendaproduto was successfully created.' }
        format.json { render :show, status: :created, location: @encomendaproduto }
      else
        format.html { render :new }
        format.json { render json: @encomendaproduto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /encomendaprodutos/1
  # PATCH/PUT /encomendaprodutos/1.json
  def update
    respond_to do |format|
      if @encomendaproduto.update(encomendaproduto_params)
        format.html { redirect_to @encomendaproduto, notice: 'Encomendaproduto was successfully updated.' }
        format.json { render :show, status: :ok, location: @encomendaproduto }
      else
        format.html { render :edit }
        format.json { render json: @encomendaproduto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /encomendaprodutos/1
  # DELETE /encomendaprodutos/1.json
  def destroy
    @encomendaproduto.destroy
    respond_to do |format|
      format.html { redirect_to encomendaprodutos_url, notice: 'Encomendaproduto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_encomendaproduto
      @encomendaproduto = Encomendaproduto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def encomendaproduto_params
      params.require(:encomendaproduto).permit(:encomenda_id, :produto_id)
    end
end
