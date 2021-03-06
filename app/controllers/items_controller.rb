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
     @item.user = User.find(params[:item][:user])
     @item.completed = false

     if @item.save!
       flash[:notice] = "Item was saved."
       render json: @item
     else
       flash.now[:alert] = "There was an error saving the item. Please try again."
       render json: @item.errors
     end
   end

   def update
     @item = Item.find(params[:id])
     @item.completed = params[:completed]

     if @item.save
       render json: @item
     else
       render json: @item.errors
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
