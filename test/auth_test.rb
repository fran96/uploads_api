test 'sign up and log in user one' do
  user = { email: 'tesdddddddt@test.com', password: 'password' }
  sign_up(user)
  assert_response :success

  (user)
  assert_response :success
end