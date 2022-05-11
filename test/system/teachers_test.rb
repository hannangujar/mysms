require "application_system_test_case"

class TeachersTest < ApplicationSystemTestCase
  setup do
    @teacher = teachers(:one)
  end

  test "visiting the index" do
    visit teachers_url
    assert_selector "h1", text: "Teachers"
  end

  test "should create teacher" do
    visit teachers_url
    click_on "New teacher"

    fill_in "Duty time end", with: @teacher.duty_time_end
    fill_in "Duty time start", with: @teacher.duty_time_start
    fill_in "Education degree", with: @teacher.education_degree
    fill_in "Expirence in years", with: @teacher.expirence_in_years
    fill_in "Hire by", with: @teacher.hire_by
    fill_in "Meta", with: @teacher.meta
    fill_in "Speciality", with: @teacher.speciality
    fill_in "Staff", with: @teacher.staff_id
    click_on "Create Teacher"

    assert_text "Teacher was successfully created"
    click_on "Back"
  end

  test "should update Teacher" do
    visit teacher_url(@teacher)
    click_on "Edit this teacher", match: :first

    fill_in "Duty time end", with: @teacher.duty_time_end
    fill_in "Duty time start", with: @teacher.duty_time_start
    fill_in "Education degree", with: @teacher.education_degree
    fill_in "Expirence in years", with: @teacher.expirence_in_years
    fill_in "Hire by", with: @teacher.hire_by
    fill_in "Meta", with: @teacher.meta
    fill_in "Speciality", with: @teacher.speciality
    fill_in "Staff", with: @teacher.staff_id
    click_on "Update Teacher"

    assert_text "Teacher was successfully updated"
    click_on "Back"
  end

  test "should destroy Teacher" do
    visit teacher_url(@teacher)
    click_on "Destroy this teacher", match: :first

    assert_text "Teacher was successfully destroyed"
  end
end
