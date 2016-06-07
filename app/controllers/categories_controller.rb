class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    @foodgroups = Foodgroup.all.order(:name)
  end

  def show
    @foodgroup = Foodgroup.find ( params[:id])
    @foodgroups = Foodgroup.all
    @categories = Category.all
    @category = Category.find( params[:id] )
    @products = @foodgroup.products
  end

end
