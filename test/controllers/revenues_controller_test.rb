require 'test_helper'

class RevenuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @revenue = revenues(:one)
  end

  test "should get index" do
    get revenues_url, as: :json
    assert_response :success
  end

  test "should create revenue" do
    assert_difference('Revenue.count') do
      post revenues_url, params: { revenue: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show revenue" do
    get revenue_url(@revenue), as: :json
    assert_response :success
  end

  test "should update revenue" do
    patch revenue_url(@revenue), params: { revenue: {  } }, as: :json
    assert_response 200
  end

  test "should destroy revenue" do
    assert_difference('Revenue.count', -1) do
      delete revenue_url(@revenue), as: :json
    end

    assert_response 204
  end
end
