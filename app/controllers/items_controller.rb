class ItemsController < ApplicationController
  def index
    @items = Item.to_a
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(params[:item])
    if @item.save
      flash[:success] = t('items.create')
      redirect_to items_path
    else
      flash[:warning] = @item.errors.full_messages
      render :new
    end
  end
end
