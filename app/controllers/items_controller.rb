class ItemsController < ApplicationController
  before_action :set_categories, :set_amounts, only: [:index, :new, :show]
  before_action :move_to_index, only: [:new, :create, :show, :destroy]

  def index
    @items = Item.where(user_id: current_user.id).order("created_at DESC") if user_signed_in?
  end

  def new
    @item = Item.new
  end

  def create
    Item.create(item_params)
    redirect_to root_path
  end

  def show
    @item = Item.find(params[:id])
    @category = @item.category
    @color = @item.color
    @season = @item.season
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to root_path
  end

  private
  def item_params
    params.require(:item).permit(:image, :category_id, :color_id, :season_id).merge(user_id: current_user.id)
  end
end