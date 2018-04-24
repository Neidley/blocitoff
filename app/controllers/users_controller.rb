class UsersController < ApplicationController
  def create
    user = User.create(user_params)
    render json: user
  end

  def sign_in
    user = User.find_by(email: params[:email])
    authenticate(user)
  end

  private

  def user_params
    params.permit(:email, :password, :password_confirmation)
  end
end
