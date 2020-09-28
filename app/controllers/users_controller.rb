class UsersController < ApplicationController

  def create
    user = User.find_or_create_by(username: params[:username])
    render json: user, except: [:created_by, :updated_at]
  end
end
