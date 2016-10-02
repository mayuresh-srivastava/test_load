require 'test_helper'

class HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get Registration" do
    get homes_Registration_url
    assert_response :success
  end

  test "should get Registration_Ques" do
    get homes_Registration_Ques_url
    assert_response :success
  end

  test "should get Registration_PDF" do
    get homes_Registration_PDF_url
    assert_response :success
  end

end
