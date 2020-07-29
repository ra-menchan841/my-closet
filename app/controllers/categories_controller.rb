class CategoriesController < ApplicationController
  before_action :set_categories, :set_amounts, only: [:show]
  def show
    @items = Item.where(category_id: params[:id], user_id: current_user.id)
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

end
