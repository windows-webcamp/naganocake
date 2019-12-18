class Admin::OrdersController < ApplicationController
<<<<<<< HEAD

=======
>>>>>>> 9de304e5e3857e536769a78d37917ca0bddc4013
# 注文履歴表示
    def index
        @orders = Order.page(params[:page]).reverse_order
    end
<<<<<<< HEAD

=======
>>>>>>> 9de304e5e3857e536769a78d37917ca0bddc4013
# 注文詳細表示
    def show
    	@order = Order.find(params[:id])
        @user = @order.user
        @order_products = @order.order_products
    end
<<<<<<< HEAD

=======
>>>>>>> 9de304e5e3857e536769a78d37917ca0bddc4013
#注文ステータス、販売ステータスの変更（詳細ページ)
    def update
        @order = Order.find(params[:id])
        @order.update(order_params)
        redirect_to admin_orders_path
    end
<<<<<<< HEAD

=======
>>>>>>> 9de304e5e3857e536769a78d37917ca0bddc4013
private
    def order_params
        params.require(:order).permit(:user_id, :name, :postcode, :address, :delivery_cost, :total_price, :order_status, :payment_method, order_products_attributes:[:id, :make_status])
    end
<<<<<<< HEAD

end
=======
end
>>>>>>> 9de304e5e3857e536769a78d37917ca0bddc4013
