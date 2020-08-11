class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def set_categories
    @categories = Category.all
  end

  def set_amounts
    if user_signed_in?
      @amounts = []
      number = 1
      while number < 62 do 
        @amount = Item.where(category_id: number, user_id: current_user.id).length
        @amounts << @amount
        number += 10
      end
    else
      @amounts = []
      number = 1
      while number < 62 do
        @amount = 0
        @amounts << @amount
        number += 10
      end
    end
  end

  def move_to_index
    redirect_to root_path unless user_signed_in?
  end

end
