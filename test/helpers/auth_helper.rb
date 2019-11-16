module AuthHelper
  def sign_up(user)
    post '/signup/',
         params: {user:{
                  "email"=> user[:email],
                  "password"=>user[:password],
                  "password_confirmation"=> user[:password]}
         }

  end

  def authorize(user)
    post '/login',
         params: {user:{
             "email"=> user[:email],
             "password"=>user[:password]
         }}
    response['Authorization']
  end
end