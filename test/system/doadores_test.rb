require "application_system_test_case"

class DoadoresTest < ApplicationSystemTestCase
  setup do
    @doador = doadores(:one)
  end

  test "visiting the index" do
    visit doadores_url
    assert_selector "h1", text: "Doadores"
  end

  test "creating a Doador" do
    visit doadores_url
    click_on "New Doador"

    fill_in "Bairro", with: @doador.bairro
    fill_in "Cep", with: @doador.cep
    fill_in "Cidade", with: @doador.cidade
    fill_in "Cpf", with: @doador.cpf
    fill_in "Endereco", with: @doador.endereco
    fill_in "Nome", with: @doador.nome
    fill_in "Numero", with: @doador.numero
    fill_in "Rg", with: @doador.rg
    fill_in "Telefone", with: @doador.telefone
    fill_in "Uf", with: @doador.uf
    fill_in "User", with: @doador.user_id
    click_on "Create Doador"

    assert_text "Doador was successfully created"
    click_on "Back"
  end

  test "updating a Doador" do
    visit doadores_url
    click_on "Edit", match: :first

    fill_in "Bairro", with: @doador.bairro
    fill_in "Cep", with: @doador.cep
    fill_in "Cidade", with: @doador.cidade
    fill_in "Cpf", with: @doador.cpf
    fill_in "Endereco", with: @doador.endereco
    fill_in "Nome", with: @doador.nome
    fill_in "Numero", with: @doador.numero
    fill_in "Rg", with: @doador.rg
    fill_in "Telefone", with: @doador.telefone
    fill_in "Uf", with: @doador.uf
    fill_in "User", with: @doador.user_id
    click_on "Update Doador"

    assert_text "Doador was successfully updated"
    click_on "Back"
  end

  test "destroying a Doador" do
    visit doadores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Doador was successfully destroyed"
  end
end
