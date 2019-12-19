class Admin::ProductsController < ApplicationController
	before_action :authenticate_admin!

	def new
	   @product = Product.new
	end

	def create
	   @product = Product.new(product_params)
  	   @product.save
  	   redirect_to admin_products_path
	end

	def show
        @product = Product.find(params[:id])
	end

	def index
		@products = Product.all
	end

	def edit
        @product = Product.find(params[:id])
	end

    def update
        @product = Product.find(params[:id])
        @product.update(product_params)
        redirect_to admin_product_path(@product)
    end

private
    def product_params
        params.require(:product).permit(:product_name, :price, :product_image, :product_intoroduction, :genre_id, :sale_status)
    end

end
