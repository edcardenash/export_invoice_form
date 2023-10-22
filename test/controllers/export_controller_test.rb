require "test_helper"

class ExportControllerTest < ActionDispatch::IntegrationTest
  test "should get companies" do
    get export_companies_url
    assert_response :success
  end
end
