class Admin::AdminsController < ApplicationController
	
	def top
		@order = Order.find(params[:id])

	end

	private

	def order_params
		params.require(:order).permit(:order_id)
	end

end


