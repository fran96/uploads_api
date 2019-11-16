class RegistrationsController < Devise::RegistrationsController
  respond_to :json

  # uses Devise methods to create a user
  def create
    build_resource(user_params)
    resource.save
    render_resource(resource)
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
