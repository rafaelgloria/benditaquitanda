require 'test_helper'

class ItempedidosControllerTest < ActionController::TestCase
  setup do
    @itempedido = itempedidos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:itempedidos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create itempedido" do
    assert_difference('Itempedido.count') do
      post :create, itempedido: { pedido_id: @itempedido.pedido_id, produto_id: @itempedido.produto_id, quantidade: @itempedido.quantidade }
    end

    assert_redirected_to itempedido_path(assigns(:itempedido))
  end

  test "should show itempedido" do
    get :show, id: @itempedido
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @itempedido
    assert_response :success
  end

  test "should update itempedido" do
    patch :update, id: @itempedido, itempedido: { pedido_id: @itempedido.pedido_id, produto_id: @itempedido.produto_id, quantidade: @itempedido.quantidade }
    assert_redirected_to itempedido_path(assigns(:itempedido))
  end

  test "should destroy itempedido" do
    assert_difference('Itempedido.count', -1) do
      delete :destroy, id: @itempedido
    end

    assert_redirected_to itempedidos_path
  end
end
