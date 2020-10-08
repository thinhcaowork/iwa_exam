class SessionsController < WebApplicationController
    include AccessTab
    before_action :restrict_access, only: %i[new create]
  
    def create
        user = User.by_email(user_params[:email]).teacher_role.take
    
        if user&.authenticate(user_params[:password])
            session[:user_id] = user.id
            redirect_to(root_path, flash: { success: 'Logged in successfully!' })
        else
            redirect_to(new_session_path, flash: { fail: 'Incorrect email or password!' })
        end
    end

    private
  
    def user_params
        params.permit(:email, :password)
    end
end
  