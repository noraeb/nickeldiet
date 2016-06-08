class ProductsController < ApplicationController
load_and_authorize_resource

  def index
    @products = Product.all
    if params[:search]
      @products = Product.search(params[:search]).order(:name)
    else
       print "Sorry, geen product gevonden."
    end
  end


  def show
      @categories = Category.all.order(:name)
      @product = Product.find( params[:id] )
  end

  def new
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

  def edit
    @product = Product.find( params[:id] )
  end

  def update
    @product = Product.find( params[:id] )

    if @product.update_attributes( product_params )
      redirect_to @product
    else
      render 'edit'
    end
  end

  def destroy
  @product = Product.find( params[:id] )

  @product.destroy

  redirect_to root_path
end

private

   def product_params
     params.require( :product ).permit( :name, :category_id, :foodgroup_id )
   end

end
