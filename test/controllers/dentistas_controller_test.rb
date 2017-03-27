require 'test_helper'

class DentistasControllerTest < ActionController::TestCase
  setup do
    @dentista = dentistas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dentistas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dentista" do
    assert_difference('Dentista.count') do
      post :create, dentista: { bairro: @dentista.bairro, cep: @dentista.cep, cidade: @dentista.cidade, cpf: @dentista.cpf, cro: @dentista.cro, email: @dentista.email, especialidade: @dentista.especialidade, estado: @dentista.estado, nascimento: @dentista.nascimento, nome: @dentista.nome, numero: @dentista.numero, rg: @dentista.rg, rua: @dentista.rua, salario: @dentista.salario, telefone: @dentista.telefone }
    end

    assert_redirected_to dentista_path(assigns(:dentista))
  end

  test "should show dentista" do
    get :show, id: @dentista
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dentista
    assert_response :success
  end

  test "should update dentista" do
    patch :update, id: @dentista, dentista: { bairro: @dentista.bairro, cep: @dentista.cep, cidade: @dentista.cidade, cpf: @dentista.cpf, cro: @dentista.cro, email: @dentista.email, especialidade: @dentista.especialidade, estado: @dentista.estado, nascimento: @dentista.nascimento, nome: @dentista.nome, numero: @dentista.numero, rg: @dentista.rg, rua: @dentista.rua, salario: @dentista.salario, telefone: @dentista.telefone }
    assert_redirected_to dentista_path(assigns(:dentista))
  end

  test "should destroy dentista" do
    assert_difference('Dentista.count', -1) do
      delete :destroy, id: @dentista
    end

    assert_redirected_to dentistas_path
  end
end
