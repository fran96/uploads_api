class RegistrationsController < Devise::RegistrationsController
  respond_to :json

  # sign up
  def create
    puts "fffffffffffffff"
    build_resource(user_params)
    puts "e3rewtrqeyer" +user_params.to_s
    resource.save
    render_resource(resource)
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
