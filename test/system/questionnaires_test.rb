require "application_system_test_case"

class QuestionnairesTest < ApplicationSystemTestCase
  setup do
    @questionnaire = questionnaires(:one)
  end

  test "visiting the index" do
    visit questionnaires_url
    assert_selector "h1", text: "Questionnaires"
  end

  test "creating a Questionnaire" do
    visit questionnaires_url
    click_on "New Questionnaire"

    fill_in "Name", with: @questionnaire.name
    click_on "Create Questionnaire"

    assert_text "Questionnaire was successfully created"
    click_on "Back"
  end

  test "updating a Questionnaire" do
    visit questionnaires_url
    click_on "Edit", match: :first

    fill_in "Name", with: @questionnaire.name
    click_on "Update Questionnaire"

    assert_text "Questionnaire was successfully updated"
    click_on "Back"
  end

  test "destroying a Questionnaire" do
    visit questionnaires_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Questionnaire was successfully destroyed"
  end
end
