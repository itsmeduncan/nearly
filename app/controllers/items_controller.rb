class ItemsController < ApplicationController
  def index
    @items = Item.to_a
  end

  def new
  end

  def create
    @item = Item.create(params[:item])
  end
end
