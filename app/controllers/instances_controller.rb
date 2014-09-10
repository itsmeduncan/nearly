class InstancesController < ApplicationController

  def index
    @item = Item.find(params[:item_id])
    @instances = @item.instances.to_a
  end

  def new
    @item = Item.find(params[:item_id])
    @traits = @item.traits.each_with_rel.reduce(Hash.new { |h,k| h[k] = [] }) do |agg, (node, rel)|
      agg[rel.name] << node
      agg
    end
    @instance = Instance.new
  end

end
