class ItemsController < ApplicationController
  before_action :set_categories, :set_amounts, only: [:index, :new, :show]
  before_action :move_to_index, only: [:new, :create, :show]

  def index
   @items = Item.where(user_id: current_user.id) if user_signed_in?
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(item_params)
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
  def set_categories
    @categories = Category.all
  end

  def set_amounts
    if user_signed_in?
      @amounts = []
      number = 0
      while number < 7 do
        number += 1
        @amount = Item.where(category_id: number, user_id: current_user.id).count
        @amounts << @amount
      end
    else
      @amounts = []
      number = 0
      while number < 7 do
        number += 1
        @amount = 0
        @amounts << @amount
      end
    end
  end

  def move_to_index
    redirect_to root_path unless user_signed_in?
  end

  def item_params
    params.require(:item).permit(:image, :category_id, :color_id, :season_id).merge(user_id: current_user.id)
  end
end