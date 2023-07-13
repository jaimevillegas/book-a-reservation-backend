class UserController < ApplicationController
  def index; end

  def list_users
    @users_name = User.pluck(:name)
    render json: @users_name
  end
end
