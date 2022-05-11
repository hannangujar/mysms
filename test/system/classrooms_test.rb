require "application_system_test_case"

class ClassroomsTest < ApplicationSystemTestCase
  setup do
    @classroom = classrooms(:one)
  end

  test "visiting the index" do
    visit classrooms_url
    assert_selector "h1", text: "Classrooms"
  end

  test "should create classroom" do
    visit classrooms_url
    click_on "New classroom"

    fill_in "End date", with: @classroom.end_date
    fill_in "Grade", with: @classroom.grade
    fill_in "Meta", with: @classroom.meta
    fill_in "Remarks", with: @classroom.remarks
    fill_in "Section", with: @classroom.section
    fill_in "Start date", with: @classroom.start_date
    check "Status" if @classroom.status
    fill_in "Teacher", with: @classroom.teacher_id
    click_on "Create Classroom"

    assert_text "Classroom was successfully created"
    click_on "Back"
  end

  test "should update Classroom" do
    visit classroom_url(@classroom)
    click_on "Edit this classroom", match: :first

    fill_in "End date", with: @classroom.end_date
    fill_in "Grade", with: @classroom.grade
    fill_in "Meta", with: @classroom.meta
    fill_in "Remarks", with: @classroom.remarks
    fill_in "Section", with: @classroom.section
    fill_in "Start date", with: @classroom.start_date
    check "Status" if @classroom.status
    fill_in "Teacher", with: @classroom.teacher_id
    click_on "Update Classroom"

    assert_text "Classroom was successfully updated"
    click_on "Back"
  end

  test "should destroy Classroom" do
    visit classroom_url(@classroom)
    click_on "Destroy this classroom", match: :first

    assert_text "Classroom was successfully destroyed"
  end
end
