class CategoriesController < ApplicationController
  before_action :set_categories, :set_amounts, :move_to_index, only: [:show]

  def show
    @items = Item.where(category_id: params[:id], user_id: current_user.id).order("created_at DESC")
  end
  
end
