class UserController < ApplicationController
  def index; end

  def list_users
    @users_name = User.pluck(:id, :name)
    render json: @users_name
  end
end
