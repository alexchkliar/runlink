require 'test_helper'

class RunsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get runs_new_url
    assert_response :success
  end

  test "should get create" do
    get runs_create_url
    assert_response :success
  end

  test "should get my_runs" do
    get runs_my_runs_url
    assert_response :success
  end

  test "should get my_run" do
    get runs_my_run_url
    assert_response :success
  end

end
