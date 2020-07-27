class CategoriesController < ApplicationController
  def show
    @items = Items.find(params[:id])
  end
end
