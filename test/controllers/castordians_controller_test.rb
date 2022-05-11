require "test_helper"

class CastordiansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @castordian = castordians(:one)
  end

  test "should get index" do
    get castordians_url
    assert_response :success
  end

  test "should get new" do
    get new_castordian_url
    assert_response :success
  end

  test "should create castordian" do
    assert_difference("Castordian.count") do
      post castordians_url, params: { castordian: { duty_time: @castordian.duty_time, meta: @castordian.meta, role: @castordian.role, staff_id: @castordian.staff_id } }
    end

    assert_redirected_to castordian_url(Castordian.last)
  end

  test "should show castordian" do
    get castordian_url(@castordian)
    assert_response :success
  end

  test "should get edit" do
    get edit_castordian_url(@castordian)
    assert_response :success
  end

  test "should update castordian" do
    patch castordian_url(@castordian), params: { castordian: { duty_time: @castordian.duty_time, meta: @castordian.meta, role: @castordian.role, staff_id: @castordian.staff_id } }
    assert_redirected_to castordian_url(@castordian)
  end

  test "should destroy castordian" do
    assert_difference("Castordian.count", -1) do
      delete castordian_url(@castordian)
    end

    assert_redirected_to castordians_url
  end
end
