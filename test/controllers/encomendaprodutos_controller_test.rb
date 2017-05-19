require 'test_helper'

class EncomendaprodutosControllerTest < ActionController::TestCase
  setup do
    @encomendaproduto = encomendaprodutos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:encomendaprodutos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create encomendaproduto" do
    assert_difference('Encomendaproduto.count') do
      post :create, encomendaproduto: { encomenda_id: @encomendaproduto.encomenda_id, produto_id: @encomendaproduto.produto_id }
    end

    assert_redirected_to encomendaproduto_path(assigns(:encomendaproduto))
  end

  test "should show encomendaproduto" do
    get :show, id: @encomendaproduto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @encomendaproduto
    assert_response :success
  end

  test "should update encomendaproduto" do
    patch :update, id: @encomendaproduto, encomendaproduto: { encomenda_id: @encomendaproduto.encomenda_id, produto_id: @encomendaproduto.produto_id }
    assert_redirected_to encomendaproduto_path(assigns(:encomendaproduto))
  end

  test "should destroy encomendaproduto" do
    assert_difference('Encomendaproduto.count', -1) do
      delete :destroy, id: @encomendaproduto
    end

    assert_redirected_to encomendaprodutos_path
  end
end
