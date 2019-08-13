require 'test_helper'

class TopsControllerTest < ActionDispatch::IntegrationTest
  test "should get toppage" do
    get tops_toppage_url
    assert_response :success
  end

end
