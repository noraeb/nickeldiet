class ProductsController < ApplicationController

  def index
    if params[:search]
      @products = Product.search(params[:search])
    else
       print "Sorry, geen product gevonden."
    end
  end

  def new
    @categories = Category.all
    @product = Product.new
    @product.category_id = params[:catgory_id]
  end

  def create
      product = Product.new( product_params )

      if product.save
         redirect_to root_path
      else
         render new_product_path
      end
   end

private

   def product_params
     params.require( :product ).permit( :name, :category_id, :foodgroup_id )
   end

end
