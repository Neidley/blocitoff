class ProfilesController < ApplicationController
  # before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @items = @user.items
    render json: @items
  end

end
