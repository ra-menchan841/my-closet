class ItemsController < ApplicationController
  before_action :set_categories, :set_amounts, only: [:index, :new, :show]

  def index
    @items = Item.all
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
  end

  private
  def set_categories
    @categories = Category.all
  end

  def set_amounts
    @amounts = []
    number = 0
    while number < 7 do
      number += 1
      @amount = Item.where(category_id: number).count
      @amounts << @amount
    end
  end

  def item_params
    params.require(:item).permit(:image, :category_id, :color_id, :season_id)
  end
end