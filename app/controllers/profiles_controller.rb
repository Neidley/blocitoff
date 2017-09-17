class ProfilesController < ApplicationController
  # before_action :authenticate_user!

  def show
    @user = User.first
    @items = @user.items
    render json: @items
  end

end
