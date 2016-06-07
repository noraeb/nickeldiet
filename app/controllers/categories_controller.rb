class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    @foodgroups = Foodgroup.all.order(:name)
  end

  def show
    @foodgroups = Foodgroup.all
    @foodgroup = Foodgroup.find ( params[:id])
    @categories = Category.all
    @category = Category.find( params[:id] )
    @products = @foodgroup.products
  end

end
