class ItempedidosController < ApplicationController
  before_action :set_itempedido, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!

  # GET /itempedidos
  # GET /itempedidos.json
  def index
    @itempedidos = Itempedido.all
  end

  # GET /itempedidos/1
  # GET /itempedidos/1.json
  def show
  end

  # GET /itempedidos/new
  def new
    @itempedido = Itempedido.new
  end

  # GET /itempedidos/1/edit
  def edit
  end

  # POST /itempedidos
  # POST /itempedidos.json
  def create
    @itempedido = Itempedido.new(itempedido_params)

    respond_to do |format|
      if @itempedido.save
        format.html { redirect_to @itempedido, notice: 'Itempedido was successfully created.' }
        format.json { render :show, status: :created, location: @itempedido }
      else
        format.html { render :new }
        format.json { render json: @itempedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /itempedidos/1
  # PATCH/PUT /itempedidos/1.json
  def update
    respond_to do |format|
      if @itempedido.update(itempedido_params)
        format.html { redirect_to @itempedido, notice: 'Itempedido was successfully updated.' }
        format.json { render :show, status: :ok, location: @itempedido }
      else
        format.html { render :edit }
        format.json { render json: @itempedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /itempedidos/1
  # DELETE /itempedidos/1.json
  def destroy
    @itempedido.destroy
    respond_to do |format|
      format.html { redirect_to itempedidos_url, notice: 'Itempedido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_itempedido
      @itempedido = Itempedido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def itempedido_params
      params.require(:itempedido).permit(:quantidade, :pedido_id, :produto_id)
    end
end
