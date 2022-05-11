require "application_system_test_case"

class CastordiansTest < ApplicationSystemTestCase
  setup do
    @castordian = castordians(:one)
  end

  test "visiting the index" do
    visit castordians_url
    assert_selector "h1", text: "Castordians"
  end

  test "should create castordian" do
    visit castordians_url
    click_on "New castordian"

    fill_in "Duty time", with: @castordian.duty_time
    fill_in "Meta", with: @castordian.meta
    fill_in "Role", with: @castordian.role
    fill_in "Staff", with: @castordian.staff_id
    click_on "Create Castordian"

    assert_text "Castordian was successfully created"
    click_on "Back"
  end

  test "should update Castordian" do
    visit castordian_url(@castordian)
    click_on "Edit this castordian", match: :first

    fill_in "Duty time", with: @castordian.duty_time
    fill_in "Meta", with: @castordian.meta
    fill_in "Role", with: @castordian.role
    fill_in "Staff", with: @castordian.staff_id
    click_on "Update Castordian"

    assert_text "Castordian was successfully updated"
    click_on "Back"
  end

  test "should destroy Castordian" do
    visit castordian_url(@castordian)
    click_on "Destroy this castordian", match: :first

    assert_text "Castordian was successfully destroyed"
  end
end
