require 'test_helper'

class RecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @record = records(:one)
  end

  test "should get index" do
    get records_url
    assert_response :success
  end

  test "should get new" do
    get new_record_url
    assert_response :success
  end

  test "should create record" do
    assert_difference('Record.count') do
      post records_url, params: { record: { centre_no: @record.centre_no, emis: @record.emis, name: @record.name, passed_2014: @record.passed_2014, passed_2015: @record.passed_2015, passed_2016: @record.passed_2016, wrote_2014: @record.wrote_2014, wrote_2015: @record.wrote_2015, wrote_2016: @record.wrote_2016 } }
    end

    assert_redirected_to record_url(Record.last)
  end

  test "should show record" do
    get record_url(@record)
    assert_response :success
  end

  test "should get edit" do
    get edit_record_url(@record)
    assert_response :success
  end

  test "should update record" do
    patch record_url(@record), params: { record: { centre_no: @record.centre_no, emis: @record.emis, name: @record.name, passed_2014: @record.passed_2014, passed_2015: @record.passed_2015, passed_2016: @record.passed_2016, wrote_2014: @record.wrote_2014, wrote_2015: @record.wrote_2015, wrote_2016: @record.wrote_2016 } }
    assert_redirected_to record_url(@record)
  end

  test "should destroy record" do
    assert_difference('Record.count', -1) do
      delete record_url(@record)
    end

    assert_redirected_to records_url
  end
end
