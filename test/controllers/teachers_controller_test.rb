require "test_helper"

class TeachersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teacher = teachers(:one)
  end

  test "should get index" do
    get teachers_url
    assert_response :success
  end

  test "should get new" do
    get new_teacher_url
    assert_response :success
  end

  test "should create teacher" do
    assert_difference("Teacher.count") do
      post teachers_url, params: { teacher: { duty_time_end: @teacher.duty_time_end, duty_time_start: @teacher.duty_time_start, education_degree: @teacher.education_degree, expirence_in_years: @teacher.expirence_in_years, hire_by: @teacher.hire_by, meta: @teacher.meta, speciality: @teacher.speciality, staff_id: @teacher.staff_id } }
    end

    assert_redirected_to teacher_url(Teacher.last)
  end

  test "should show teacher" do
    get teacher_url(@teacher)
    assert_response :success
  end

  test "should get edit" do
    get edit_teacher_url(@teacher)
    assert_response :success
  end

  test "should update teacher" do
    patch teacher_url(@teacher), params: { teacher: { duty_time_end: @teacher.duty_time_end, duty_time_start: @teacher.duty_time_start, education_degree: @teacher.education_degree, expirence_in_years: @teacher.expirence_in_years, hire_by: @teacher.hire_by, meta: @teacher.meta, speciality: @teacher.speciality, staff_id: @teacher.staff_id } }
    assert_redirected_to teacher_url(@teacher)
  end

  test "should destroy teacher" do
    assert_difference("Teacher.count", -1) do
      delete teacher_url(@teacher)
    end

    assert_redirected_to teachers_url
  end
end
