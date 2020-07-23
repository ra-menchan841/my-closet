class ItemsController < ApplicationController
  def index
    @categoryTags = Category.all

    tagNumber = 0
    @amounts = []
    while tagNumber < 8 do
      tagNumber += 1
      amount = Item.where(category_id: tagNumber).length
      @amounts << amount
    end
    

  end

  def new
    @categoryTags = Category.all
    @item = Item.new
    
    tagNumber = 0
    @amounts = []
    while tagNumber < 8 do
      tagNumber += 1
      amount = Item.where(category_id: tagNumber).length
      @amounts << amount
    end


  end

  def create
    Item.create(item_params)
    redirect_to root_path
  end

  private
  def item_params
    params.require(:item).permit(:image, :category_id, :color_id, :season_id)
  end
end
