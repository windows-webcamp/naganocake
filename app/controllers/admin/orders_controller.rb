class Admin::OrdersController < ApplicationController

# 注文履歴表示
    def index
    	# @orders = Order.page(params[:page]).reverse_order
    	@orders = Order.all
    	@user = User.find(params[:id])
    end

# 注文詳細表示
    def show
    	@order = Order.find(params[:id])
        @user = @order.user
    end

#注文ステータス、販売ステータスの変更（詳細ページ)
    def update
    end

end
