require 'test_helper'
require 'helpers/auth_helper'

class UploadsControllerTest < ActionDispatch::IntegrationTest
  self.use_transactional_tests = false
  include AuthHelper
  setup do
    @upload = uploads(:one)
    test_user = { email: "user@test.com", password: "passpass123" }
    sign_up(test_user)
    @auth_token = authorize_user(test_user)
  end


  test "should get index" do
    get uploads_url, as: :json, headers: { 'Authorization' => @auth_token }
    assert_response :success
  end
  #
  # test "should create upload" do
  #   assert_difference('Upload.count') do
  #     post uploads_url, params: { upload: { filename: @upload.filename, uri: @upload.uri } }, as: :json,
  #          headers: @auth_tokens
  #   end
  #
  #   assert_response 201
  # end

  # test "should show upload" do
  #   get upload_url(@upload), as: :json,headers: @auth_tokens
  #   assert_response :success
  # end
  #
  # test "should destroy upload" do
  #   assert_difference('Upload.count', -1) do
  #     delete upload_url(@upload), as: :json,headers: @auth_tokens
  #   end
  #
  #   assert_response 204
  # end
end
