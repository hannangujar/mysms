require "test_helper"

class StaffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @staff = staffs(:one)
  end

  test "should get index" do
    get staffs_url
    assert_response :success
  end

  test "should get new" do
    get new_staff_url
    assert_response :success
  end

  test "should create staff" do
    assert_difference("Staff.count") do
      post staffs_url, params: { staff: { address_id: @staff.address_id, contact_id: @staff.contact_id, date_of_hiring: @staff.date_of_hiring, father_name: @staff.father_name, identity_card_number: @staff.identity_card_number, meta: @staff.meta, place_of_birth: @staff.place_of_birth, salary: @staff.salary, staff_type: @staff.staff_type, user_id: @staff.user_id, year_of_service: @staff.year_of_service } }
    end

    assert_redirected_to staff_url(Staff.last)
  end

  test "should show staff" do
    get staff_url(@staff)
    assert_response :success
  end

  test "should get edit" do
    get edit_staff_url(@staff)
    assert_response :success
  end

  test "should update staff" do
    patch staff_url(@staff), params: { staff: { address_id: @staff.address_id, contact_id: @staff.contact_id, date_of_hiring: @staff.date_of_hiring, father_name: @staff.father_name, identity_card_number: @staff.identity_card_number, meta: @staff.meta, place_of_birth: @staff.place_of_birth, salary: @staff.salary, staff_type: @staff.staff_type, user_id: @staff.user_id, year_of_service: @staff.year_of_service } }
    assert_redirected_to staff_url(@staff)
  end

  test "should destroy staff" do
    assert_difference("Staff.count", -1) do
      delete staff_url(@staff)
    end

    assert_redirected_to staffs_url
  end
end
