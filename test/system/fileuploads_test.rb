require "application_system_test_case"

class FileuploadsTest < ApplicationSystemTestCase
  setup do
    @fileupload = fileuploads(:one)
  end

  test "visiting the index" do
    visit fileuploads_url
    assert_selector "h1", text: "Fileuploads"
  end

  test "creating a Fileupload" do
    visit fileuploads_url
    click_on "New Fileupload"

    fill_in "Content type", with: @fileupload.content_type
    fill_in "Contents", with: @fileupload.contents
    fill_in "Fname", with: @fileupload.fname
    click_on "Create Fileupload"

    assert_text "Fileupload was successfully created"
    click_on "Back"
  end

  test "updating a Fileupload" do
    visit fileuploads_url
    click_on "Edit", match: :first

    fill_in "Content type", with: @fileupload.content_type
    fill_in "Contents", with: @fileupload.contents
    fill_in "Fname", with: @fileupload.fname
    click_on "Update Fileupload"

    assert_text "Fileupload was successfully updated"
    click_on "Back"
  end

  test "destroying a Fileupload" do
    visit fileuploads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fileupload was successfully destroyed"
  end
end
