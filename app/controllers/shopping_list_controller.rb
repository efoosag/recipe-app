class ShoppingListController < ApplicationController
  def index
    @items = RecipeFood.all
    # @items = RecipeFood.where(recipe_id: params[:id])
  end
end
