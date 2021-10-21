require "application_system_test_case"

class ReportCovid19sTest < ApplicationSystemTestCase
  setup do
    @report_covid19 = report_covid19s(:one)
  end

  test "visiting the index" do
    visit report_covid19s_url
    assert_selector "h1", text: "Report Covid19s"
  end

  test "creating a Report covid19" do
    visit report_covid19s_url
    click_on "New Report Covid19"

    check "Accepted sample" if @report_covid19.accepted_sample
    fill_in "Approved by", with: @report_covid19.approved_by
    fill_in "Checksum", with: @report_covid19.checksum
    fill_in "Collection date", with: @report_covid19.collection_date
    fill_in "Confirmed by", with: @report_covid19.confirmed_by
    fill_in "Hospital name", with: @report_covid19.hospital_name
    fill_in "Physician name", with: @report_covid19.physician_name
    fill_in "Received date", with: @report_covid19.received_date
    fill_in "Report", with: @report_covid19.report_id
    fill_in "Reported by", with: @report_covid19.reported_by
    fill_in "Reported date", with: @report_covid19.reported_date
    fill_in "Result", with: @report_covid19.result
    fill_in "Sample type", with: @report_covid19.sample_type
    fill_in "Target b2m", with: @report_covid19.target_b2m
    fill_in "Target n", with: @report_covid19.target_n
    fill_in "Target orf1ab", with: @report_covid19.target_orf1ab
    fill_in "Token", with: @report_covid19.token
    click_on "Create Report covid19"

    assert_text "Report covid19 was successfully created"
    click_on "Back"
  end

  test "updating a Report covid19" do
    visit report_covid19s_url
    click_on "Edit", match: :first

    check "Accepted sample" if @report_covid19.accepted_sample
    fill_in "Approved by", with: @report_covid19.approved_by
    fill_in "Checksum", with: @report_covid19.checksum
    fill_in "Collection date", with: @report_covid19.collection_date
    fill_in "Confirmed by", with: @report_covid19.confirmed_by
    fill_in "Hospital name", with: @report_covid19.hospital_name
    fill_in "Physician name", with: @report_covid19.physician_name
    fill_in "Received date", with: @report_covid19.received_date
    fill_in "Report", with: @report_covid19.report_id
    fill_in "Reported by", with: @report_covid19.reported_by
    fill_in "Reported date", with: @report_covid19.reported_date
    fill_in "Result", with: @report_covid19.result
    fill_in "Sample type", with: @report_covid19.sample_type
    fill_in "Target b2m", with: @report_covid19.target_b2m
    fill_in "Target n", with: @report_covid19.target_n
    fill_in "Target orf1ab", with: @report_covid19.target_orf1ab
    fill_in "Token", with: @report_covid19.token
    click_on "Update Report covid19"

    assert_text "Report covid19 was successfully updated"
    click_on "Back"
  end

  test "destroying a Report covid19" do
    visit report_covid19s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Report covid19 was successfully destroyed"
  end
end
