require 'test_helper'

class EncomendasControllerTest < ActionController::TestCase
  setup do
    @encomenda = encomendas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:encomendas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create encomenda" do
    assert_difference('Encomenda.count') do
      post :create, encomenda: { dataentrega: @encomenda.dataentrega, datalimitepedido: @encomenda.datalimitepedido, endereco_id: @encomenda.endereco_id }
    end

    assert_redirected_to encomenda_path(assigns(:encomenda))
  end

  test "should show encomenda" do
    get :show, id: @encomenda
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @encomenda
    assert_response :success
  end

  test "should update encomenda" do
    patch :update, id: @encomenda, encomenda: { dataentrega: @encomenda.dataentrega, datalimitepedido: @encomenda.datalimitepedido, endereco_id: @encomenda.endereco_id }
    assert_redirected_to encomenda_path(assigns(:encomenda))
  end

  test "should destroy encomenda" do
    assert_difference('Encomenda.count', -1) do
      delete :destroy, id: @encomenda
    end

    assert_redirected_to encomendas_path
  end
end
