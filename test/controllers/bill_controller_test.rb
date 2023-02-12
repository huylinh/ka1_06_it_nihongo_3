require 'test_helper'

class BillControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get bill_home_url
    assert_response :success
  end

end
