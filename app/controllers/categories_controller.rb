class CategoriesController < ApplicationController
  before_action :set_categories, :set_amounts, only: [:show]
  def show
    @items = Item.where(category_id: params[:id])
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

end
