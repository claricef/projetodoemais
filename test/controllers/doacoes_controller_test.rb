require 'test_helper'

class DoacoesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doacao = doacoes(:one)
  end

  test "should get index" do
    get doacoes_url
    assert_response :success
  end

  test "should get new" do
    get new_doacao_url
    assert_response :success
  end

  test "should create doacao" do
    assert_difference('Doacao.count') do
      post doacoes_url, params: { doacao: { item: @doacao.item, obs: @doacao.obs, status: @doacao.status, user_id: @doacao.user_id } }
    end

    assert_redirected_to doacao_url(Doacao.last)
  end

  test "should show doacao" do
    get doacao_url(@doacao)
    assert_response :success
  end

  test "should get edit" do
    get edit_doacao_url(@doacao)
    assert_response :success
  end

  test "should update doacao" do
    patch doacao_url(@doacao), params: { doacao: { item: @doacao.item, obs: @doacao.obs, status: @doacao.status, user_id: @doacao.user_id } }
    assert_redirected_to doacao_url(@doacao)
  end

  test "should destroy doacao" do
    assert_difference('Doacao.count', -1) do
      delete doacao_url(@doacao)
    end

    assert_redirected_to doacoes_url
  end
end
