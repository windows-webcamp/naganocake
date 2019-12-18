class Admin::OrdersController < ApplicationController
# 注文履歴表示
    def index
        @orders = Order.page(params[:page]).reverse_order
    end
# 注文詳細表示
    def show
    	@order = Order.find(params[:id])
        @user = @order.user
        @order_products = @order.order_products
    end
#注文ステータス、販売ステータスの変更（詳細ページ)
    def update
        @order = Order.find(params[:id])
        @order.update(order_params)
        redirect_to admin_orders_path
    end
private
    def order_params
        params.require(:order).permit(:user_id, :name, :postcode, :address, :delivery_cost, :total_price, :order_status, :payment_method, order_products_attributes:[:id, :make_status])
    end
end