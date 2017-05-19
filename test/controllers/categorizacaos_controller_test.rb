require 'test_helper'

class CategorizacaosControllerTest < ActionController::TestCase
  setup do
    @categorizacao = categorizacaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categorizacaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categorizacao" do
    assert_difference('Categorizacao.count') do
      post :create, categorizacao: { descricao: @categorizacao.descricao, nome: @categorizacao.nome }
    end

    assert_redirected_to categorizacao_path(assigns(:categorizacao))
  end

  test "should show categorizacao" do
    get :show, id: @categorizacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categorizacao
    assert_response :success
  end

  test "should update categorizacao" do
    patch :update, id: @categorizacao, categorizacao: { descricao: @categorizacao.descricao, nome: @categorizacao.nome }
    assert_redirected_to categorizacao_path(assigns(:categorizacao))
  end

  test "should destroy categorizacao" do
    assert_difference('Categorizacao.count', -1) do
      delete :destroy, id: @categorizacao
    end

    assert_redirected_to categorizacaos_path
  end
end
