require "test_helper"

class ReportCovid19sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @report_covid19 = report_covid19s(:one)
  end

  test "should get index" do
    get report_covid19s_url
    assert_response :success
  end

  test "should get new" do
    get new_report_covid19_url
    assert_response :success
  end

  test "should create report_covid19" do
    assert_difference('ReportCovid19.count') do
      post report_covid19s_url, params: { report_covid19: { accepted_sample: @report_covid19.accepted_sample, approved_by: @report_covid19.approved_by, checksum: @report_covid19.checksum, collection_date: @report_covid19.collection_date, confirmed_by: @report_covid19.confirmed_by, hospital_name: @report_covid19.hospital_name, physician_name: @report_covid19.physician_name, received_date: @report_covid19.received_date, report_id: @report_covid19.report_id, reported_by: @report_covid19.reported_by, reported_date: @report_covid19.reported_date, result: @report_covid19.result, sample_type: @report_covid19.sample_type, target_b2m: @report_covid19.target_b2m, target_n: @report_covid19.target_n, target_orf1ab: @report_covid19.target_orf1ab, token: @report_covid19.token } }
    end

    assert_redirected_to report_covid19_url(ReportCovid19.last)
  end

  test "should show report_covid19" do
    get report_covid19_url(@report_covid19)
    assert_response :success
  end

  test "should get edit" do
    get edit_report_covid19_url(@report_covid19)
    assert_response :success
  end

  test "should update report_covid19" do
    patch report_covid19_url(@report_covid19), params: { report_covid19: { accepted_sample: @report_covid19.accepted_sample, approved_by: @report_covid19.approved_by, checksum: @report_covid19.checksum, collection_date: @report_covid19.collection_date, confirmed_by: @report_covid19.confirmed_by, hospital_name: @report_covid19.hospital_name, physician_name: @report_covid19.physician_name, received_date: @report_covid19.received_date, report_id: @report_covid19.report_id, reported_by: @report_covid19.reported_by, reported_date: @report_covid19.reported_date, result: @report_covid19.result, sample_type: @report_covid19.sample_type, target_b2m: @report_covid19.target_b2m, target_n: @report_covid19.target_n, target_orf1ab: @report_covid19.target_orf1ab, token: @report_covid19.token } }
    assert_redirected_to report_covid19_url(@report_covid19)
  end

  test "should destroy report_covid19" do
    assert_difference('ReportCovid19.count', -1) do
      delete report_covid19_url(@report_covid19)
    end

    assert_redirected_to report_covid19s_url
  end
end
