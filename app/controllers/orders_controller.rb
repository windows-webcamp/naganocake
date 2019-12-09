class OrdersController < ApplicationController
# 注文情報入力ページorder_productモデル
    def new
    	@order_product = OrderProduct.new
        @order = Order.new
        # @user = current_user
    end
# 注文確認ページ
    def check
    end
# 注文完了ページ
    def finish
    end
# 注文情報を保存
    def create
    end
# 注文履歴一覧ページ
    def index
        @orders = Order.all
    end
# 注文履歴詳細ページ
    def show
    end
end
