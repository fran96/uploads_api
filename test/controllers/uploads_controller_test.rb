require 'test_helper'
require 'helpers/auth_helper'

class UploadsControllerTest < ActionDispatch::IntegrationTest
  self.use_transactional_tests = false
  include AuthHelper
  setup do
    @upload = uploads(:one)
    @user = { id: 1, email: "user@test.com", password: "passpass123" }
    sign_up(@user)
    @auth_token = authorize(@user)
  end

  test "should get index" do
    get uploads_url, as: :json, headers: { 'Authorization' => @auth_token }
    assert_response :success
  end
  #
  test "should create upload" do
    assert_difference('Upload.count') do
    post uploads_url, params: { upload: { binary: "#{Rails.root}/test/fixtures/files/test.pdf", file: "test.pdf"} }, as: :json,
         headers: { 'Authorization' => @auth_token }
    end
    assert_response 201
  end

  test "should show upload" do
    get upload_url(@upload), as: :json, headers: { 'Authorization' => @auth_token }
    assert_response :success
  end
  #
  test "should destroy upload" do
    assert_difference('Upload.count', -1) do
      delete upload_url(@upload), as: :json, headers: { 'Authorization' => @auth_token }
    end

    assert_response 200
  end
end
