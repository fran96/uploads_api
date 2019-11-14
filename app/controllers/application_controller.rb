class ApplicationController < ActionController::API
   def load_user
    User.find_for_database_authentication(email: sign_in_params[:email])
  end

  def render_resource(resource)
    if resource.errors.empty?
      render json: resource
    else
      validation_error(resource)
    end
  end

  def validation_error(resource)
    render json: {
        errors: [
            {
                status: '400',
                title: 'Bad Request',
                detail: resource.errors,
                code: '100'
            }
        ]
    }, status: :bad_request
  end
  #
  # def sign_in_params
  #   params.require(:user).permit :email, :password
  # end
end
