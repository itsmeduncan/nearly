class InstancesController < ApplicationController

  def index
    @item = Item.find(params[:item_id])

    @instances = @item.instances.to_a
  end

end
