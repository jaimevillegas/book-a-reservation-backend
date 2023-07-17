class ApplicationController < ActionController::Base

    def authorized_user
        @user = User.find_by_id(user_id)
      end

    def authorize
    return if authorized_user

    render json: { message: 'you have to log in before accessing the api' },
           status: :unauthorized
  end
end
