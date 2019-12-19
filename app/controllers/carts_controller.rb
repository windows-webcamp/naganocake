class CartsController < ApplicationController
    before_action :authenticate_user!

def index
	@carts = current_user.carts
end

def create
	@cart = Cart.new(cart_params)
	@cart.save
	redirect_to carts_path
end

def update
    @cart = Cart.find(params[:id])
    @cart.update(cart_params)
    redirect_to carts_path
end

def destroy
    @cart = Cart.find(params[:id])
    @cart.destroy
    redirect_to carts_path
end

def carts_delete
    # @carts = current_user.carts
    # @carts.delete_all
    Cart.where(user_id: current_user.id).delete_all
    redirect_to carts_path
end

private
	def cart_params
	params.require(:cart).permit(:product_id, :number, :user_id)
end

end
