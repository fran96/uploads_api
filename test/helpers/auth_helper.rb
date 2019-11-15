module AuthHelper
  def sign_up(user)
    puts user
    post '/signup/',
         params: {user:{
                  "email"=> user[:email],
                  "password"=>user[:password],
                  "password_confirmation"=> user[:password]}
         }

  end

  def authorize_user(user)
    post '/login',
         params: {user:{
             "email"=> user[:email],
             "password"=>user[:password]
         }}
    response['Authorization']
  end
end