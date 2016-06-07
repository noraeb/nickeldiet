class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    @foodgroups = Foodgroup.order(:name).order(:name)
  end

  def show
    @foodgroups = Foodgroup.all
    @categories = Category.all
    @category = Category.find( params[:id] )
    @foodgroup = Foodgroup.find( params[:id] )
    @products = @category.products.order(:name)
  end

end
