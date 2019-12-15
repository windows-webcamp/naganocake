class OrdersController < ApplicationController


# 注文情報入力ページorder_productモデル
    def new
    	@order = Order.new
      # @user = current_user
    end

# 注文確認ページ
    def check
        @order = Order.new(order_params)
        # @order = Order.new
        @carts = current_user.carts

    end

# 注文完了ページ
    def finish
    end

# 注文情報を保存
    def create
        @order = Order.new(order_params)
        @order.user_id = current_user.id
        @order.save

        @carts = current_user.carts
        @carts.each do |cart|
            @order_product = OrderProduct.new
            @order_product.number = cart.number
            @order_product.subtotal_price = (cart.product.price*1.1).round * cart.number
            @order_product.order_id = @order.id
            @order_product.product_id = cart.product_id
            @order_product.save

        end
        current_user.carts.destroy_all
        pp @order.errors.full_messages
        redirect_to finish_orders_path
    end

# 注文履歴一覧ページ
    def index
        @user = current_user
        @orders = Order.all
    end

# 注文履歴詳細ページ
    def show
        @order = Order.find(params[:id])
        @order_products = @order.order_products
    end

private
    def order_params
        params.require(:order).permit(:payment_method, :postcode, :address, :name, :user_id, :delivery_cost, :total_price, :order_status)
    end
end

