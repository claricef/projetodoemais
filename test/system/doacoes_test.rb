require "application_system_test_case"

class DoacoesTest < ApplicationSystemTestCase
  setup do
    @doacao = doacoes(:one)
  end

  test "visiting the index" do
    visit doacoes_url
    assert_selector "h1", text: "Doacoes"
  end

  test "creating a Doacao" do
    visit doacoes_url
    click_on "New Doacao"

    fill_in "Item", with: @doacao.item
    fill_in "Obs", with: @doacao.obs
    fill_in "Status", with: @doacao.status
    fill_in "User", with: @doacao.user_id
    click_on "Create Doacao"

    assert_text "Doacao was successfully created"
    click_on "Back"
  end

  test "updating a Doacao" do
    visit doacoes_url
    click_on "Edit", match: :first

    fill_in "Item", with: @doacao.item
    fill_in "Obs", with: @doacao.obs
    fill_in "Status", with: @doacao.status
    fill_in "User", with: @doacao.user_id
    click_on "Update Doacao"

    assert_text "Doacao was successfully updated"
    click_on "Back"
  end

  test "destroying a Doacao" do
    visit doacoes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Doacao was successfully destroyed"
  end
end
