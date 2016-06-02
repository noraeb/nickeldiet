class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    @products = Product.all
  end

  def show
    @categories = Category.all
    @category = Category.find( params[:id] )
  end
end
