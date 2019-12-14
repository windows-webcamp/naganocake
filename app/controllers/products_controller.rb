class ProductsController < ApplicationController

	def show
	@product = Product.find(params[:id])
	@cart = Cart.new
    end
end