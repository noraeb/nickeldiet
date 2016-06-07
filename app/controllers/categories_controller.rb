class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    @foodgroups = Foodgroup.order(:name)
  end

  def show
    @foodgroups = Foodgroup.all
    @categories = Category.all
    @category = Category.find( params[:id] )
    @foodgroup = Foodgroup.find( params[:id] )
    @products = @category.products
  end

end
