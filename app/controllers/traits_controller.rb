class TraitsController < ApplicationController

  def index
    @item = Item.where(id: params[:item_id]).first
    @traits = @item.traits.each_with_rel.reduce(Hash.new { |h,k| h[k] = [] }) do |agg, (node, rel)|
      agg[rel.name] << node
      agg
    end
  end

  def create
    @item = Item.where(id: params[:item_id]).first
    trait = Trait.create(description: params[:description])
    dimension = Dimension.create(name: params[:dimension_name], from_node: @item, to_node: trait)
    redirect_to item_traits_path(@item)
  end

end
