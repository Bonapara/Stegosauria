require 'test_helper'

class HomepControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get homep_index_url
    assert_response :success
  end

end
