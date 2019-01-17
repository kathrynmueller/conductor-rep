require "application_system_test_case"

class RepertoiresTest < ApplicationSystemTestCase
  setup do
    @repertoire = repertoires(:one)
  end

  test "visiting the index" do
    visit repertoires_url
    assert_selector "h1", text: "Repertoires"
  end

  test "creating a Repertoire" do
    visit repertoires_url
    click_on "New Repertoire"

    fill_in "Composer", with: @repertoire.composer
    fill_in "Date performed", with: @repertoire.date_performed
    fill_in "Ensemble performed", with: @repertoire.ensemble_performed
    fill_in "Title", with: @repertoire.title
    click_on "Create Repertoire"

    assert_text "Repertoire was successfully created"
    click_on "Back"
  end

  test "updating a Repertoire" do
    visit repertoires_url
    click_on "Edit", match: :first

    fill_in "Composer", with: @repertoire.composer
    fill_in "Date performed", with: @repertoire.date_performed
    fill_in "Ensemble performed", with: @repertoire.ensemble_performed
    fill_in "Title", with: @repertoire.title
    click_on "Update Repertoire"

    assert_text "Repertoire was successfully updated"
    click_on "Back"
  end

  test "destroying a Repertoire" do
    visit repertoires_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Repertoire was successfully destroyed"
  end
end
