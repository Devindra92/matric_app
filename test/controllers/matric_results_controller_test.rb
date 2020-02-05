require 'test_helper'

class MatricResultsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get matric_results_home_url
    assert_response :success
  end

  test "should get graphs" do
    get matric_results_graphs_url
    assert_response :success
  end

  test "should get reports" do
    get matric_results_reports_url
    assert_response :success
  end

end
