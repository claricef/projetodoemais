require 'test_helper'

class DoadoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doador = doadores(:one)
  end

  test "should get index" do
    get doadores_url
    assert_response :success
  end

  test "should get new" do
    get new_doador_url
    assert_response :success
  end

  test "should create doador" do
    assert_difference('Doador.count') do
      post doadores_url, params: { doador: { bairro: @doador.bairro, cep: @doador.cep, cidade: @doador.cidade, cpf: @doador.cpf, endereco: @doador.endereco, nome: @doador.nome, numero: @doador.numero, rg: @doador.rg, telefone: @doador.telefone, uf: @doador.uf, user_id: @doador.user_id } }
    end

    assert_redirected_to doador_url(Doador.last)
  end

  test "should show doador" do
    get doador_url(@doador)
    assert_response :success
  end

  test "should get edit" do
    get edit_doador_url(@doador)
    assert_response :success
  end

  test "should update doador" do
    patch doador_url(@doador), params: { doador: { bairro: @doador.bairro, cep: @doador.cep, cidade: @doador.cidade, cpf: @doador.cpf, endereco: @doador.endereco, nome: @doador.nome, numero: @doador.numero, rg: @doador.rg, telefone: @doador.telefone, uf: @doador.uf, user_id: @doador.user_id } }
    assert_redirected_to doador_url(@doador)
  end

  test "should destroy doador" do
    assert_difference('Doador.count', -1) do
      delete doador_url(@doador)
    end

    assert_redirected_to doadores_url
  end
end
