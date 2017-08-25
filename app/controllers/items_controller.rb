class ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def create
    @item = Item.new
    @item.name = params[:item][:name]

    if @item.save
      flash[:notice] = "Item was saved."
      redirect_to root_path
    else
      flash.now[:alert] = "There was an error saving the item. Please try again."
      render :new
    end
  end
end
