class ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def index
    @items = Item.all
    render json: @items
  end

  def create
    @item = Item.new
    @item.name = params[:item][:name]
    @item.user = current_user || User.first
    @item.completed = false

    if @item.save!
      flash[:notice] = "Item was saved."
      redirect_to root_path
    else
      flash.now[:alert] = "There was an error saving the item. Please try again."
      render :new
    end
  end

  def update
    @item = Item.find(params[:id])
    @item.completed = true || false

    if @item.save!
      flash[:notice] = "Item was saved."
      redirect_to root_path
    else
      flash.now[:alert] = "There was an error saving the item. Please try again."
      render root_path
    end
  end

  def destroy
    @item = Item.find(params[:id])

    if @item.destroy
      flash[:notice] = "\"#{@item.name}\" was deleted successfully."
      redirect_to root_path
    else
      flash.now[:alert] = "There was an error deleting the item."
      render root_path
    end
  end
end
