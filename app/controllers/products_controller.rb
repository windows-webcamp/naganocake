class ProductsController < ApplicationController

	def show
	 @product = Product.find(params[:id])
	 @cart = Cart.new
     @genres = Genre.all
    end

    def index
    if params[:genre_id]
     @products = Product.where(genre_id: params[:genre_id])
    else
     @products = Product.all
     end

     @genres = Genre.all
    end

end