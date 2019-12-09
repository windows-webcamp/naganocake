class CartsController < ApplicationController

def create
	@cart = Cart.new(cart_params)
	@cart.save
	redirect_to carts_path
end

def index
	@carts = Cart.all
end

private
	def cart_params
	params.require(:cart).permit(:product_id, :number, :user_id)
end

end
