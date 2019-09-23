require 'test_helper'

class ProgressControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get progress_new_url
    assert_response :success
  end

  test "should get index" do
    get progress_index_url
    assert_response :success
  end

  test "should get show" do
    get progress_show_url
    assert_response :success
  end

  test "should get create" do
    get progress_create_url
    assert_response :success
  end

end
