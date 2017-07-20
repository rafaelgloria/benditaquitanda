class PedidosController < ApplicationController
  before_action :set_pedido, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!

  # GET /pedidos
  # GET /pedidos.json
  def index
    if current_usuario.admin?
      @pedidos = Pedido.all
    else
      @pedidos = Pedido.where usuario: current_usuario
    end
    if @pedidos == nil
      @pedidos = Array.new()
    end
  end

  # GET /pedidos/1
  # GET /pedidos/1.json
  def show
  end

  # GET /pedidos/new
  def new
    @pedido = Pedido.new
    Produto.all.order(:nome).each do |prod|
      @pedido.itempedidos.build(quantidade: 0, produto: prod)
    end
    set_usuarios
    @encomendas = Encomenda.where("datalimitepedido >= ?", DateTime.now).order(:datalimitepedido)
  end

  # GET /pedidos/1/edit
  def edit
    set_usuarios
    @encomendas = Encomenda.all
  end

  # POST /pedidos
  # POST /pedidos.json
  def create

    @pedido = Pedido.new(pedido_params)

    #contador = 1
    #@pedido.itempedidos do |ip|
    #  ip.produto.id = contador
    #  contador += 1
    #end

    respond_to do |format|
      if @pedido.save
        format.html { redirect_to @pedido, notice: 'Pedido was successfully created.' }
        format.json { render :show, status: :created, location: @pedido }
      else
        format.html { render :new }
        format.json { render json: @pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pedidos/1
  # PATCH/PUT /pedidos/1.json
  def update
    respond_to do |format|
      if @pedido.update(pedido_params)
        format.html { redirect_to @pedido, notice: 'Pedido was successfully updated.' }
        format.json { render :show, status: :ok, location: @pedido }
      else
        format.html { render :edit }
        format.json { render json: @pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pedidos/1
  # DELETE /pedidos/1.json
  def destroy
    @pedido.destroy
    respond_to do |format|
      format.html { redirect_to pedidos_url, notice: 'Pedido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # buscar os usuarios para a combo de usuarios
    def set_usuarios
      if current_usuario.admin?
        @usuarios = Usuario.all
      else
        @usuarios = Usuario.where("email = ?", current_usuario.email)
      end
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_pedido
      @pedido = Pedido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pedido_params
      params.require(:pedido).permit(:usuario_id, :encomenda_id, :itempedidos_attributes => [:id, :pedido_id, :produto_id, :quantidade])
    end
end
