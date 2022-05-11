require "application_system_test_case"

class StaffsTest < ApplicationSystemTestCase
  setup do
    @staff = staffs(:one)
  end

  test "visiting the index" do
    visit staffs_url
    assert_selector "h1", text: "Staffs"
  end

  test "should create staff" do
    visit staffs_url
    click_on "New staff"

    fill_in "Address", with: @staff.address_id
    fill_in "Contact", with: @staff.contact_id
    fill_in "Date of hiring", with: @staff.date_of_hiring
    fill_in "Father name", with: @staff.father_name
    fill_in "Identity card number", with: @staff.identity_card_number
    fill_in "Meta", with: @staff.meta
    fill_in "Place of birth", with: @staff.place_of_birth
    fill_in "Salary", with: @staff.salary
    fill_in "Staff type", with: @staff.staff_type
    fill_in "User", with: @staff.user_id
    fill_in "Year of service", with: @staff.year_of_service
    click_on "Create Staff"

    assert_text "Staff was successfully created"
    click_on "Back"
  end

  test "should update Staff" do
    visit staff_url(@staff)
    click_on "Edit this staff", match: :first

    fill_in "Address", with: @staff.address_id
    fill_in "Contact", with: @staff.contact_id
    fill_in "Date of hiring", with: @staff.date_of_hiring
    fill_in "Father name", with: @staff.father_name
    fill_in "Identity card number", with: @staff.identity_card_number
    fill_in "Meta", with: @staff.meta
    fill_in "Place of birth", with: @staff.place_of_birth
    fill_in "Salary", with: @staff.salary
    fill_in "Staff type", with: @staff.staff_type
    fill_in "User", with: @staff.user_id
    fill_in "Year of service", with: @staff.year_of_service
    click_on "Update Staff"

    assert_text "Staff was successfully updated"
    click_on "Back"
  end

  test "should destroy Staff" do
    visit staff_url(@staff)
    click_on "Destroy this staff", match: :first

    assert_text "Staff was successfully destroyed"
  end
end
