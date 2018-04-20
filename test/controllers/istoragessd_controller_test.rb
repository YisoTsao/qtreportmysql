require 'test_helper'

class IstoragessdControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get istoragessd_index_url
    assert_response :success
  end

  test "should get new" do
    get istoragessd_new_url
    assert_response :success
  end

  test "should get show" do
    get istoragessd_show_url
    assert_response :success
  end

  test "should get edit" do
    get istoragessd_edit_url
    assert_response :success
  end

end
