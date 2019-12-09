class Admin::OrdersController < ApplicationController

# 注文履歴表示
    def index
    	@orders = Order.all
    	@users = User.all
    end

# 注文詳細表示
    def show
    end

#注文ステータス、販売ステータスの変更（詳細ページ)
    def update
    end

end
