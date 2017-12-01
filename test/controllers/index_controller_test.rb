require 'test_helper'

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get menu" do
    get index_menu_url
    assert_response :success
  end

end
