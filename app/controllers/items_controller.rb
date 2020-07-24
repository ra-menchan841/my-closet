class ItemsController < ApplicationController
  before_action :create_categoryTags, :countItems, only: [:index, :new]

  def index
  end

  def new
    @item = Item.new
  end

  def create
    @image = Item.create(item_params)
    redirect_to root_path
  end

  private
  def create_categoryTags
    @categoryTags = Category.all
  end

  def countItems
    tagNumber = 0
    @amounts = []
      while tagNumber < 8 do
        tagNumber += 1
        amount = Item.where(category_id: tagNumber).length
        @amounts << amount
      end
  end

  def item_params
    params.require(:item).permit(:image, :category_id, :color_id, :season_id)
  end
end
