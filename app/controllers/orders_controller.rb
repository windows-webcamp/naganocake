class OrdersController < ApplicationController
<<<<<<< HEAD


# 注文情報入力ページorder_productモデル
    def new
    	@order = Order.new
      # @user = current_user
    end

# 注文確認ページ
    def check
        @carts = Cart.all
        @user = current_user
    end

# 注文完了ページ
    def finish
    end

# 注文情報を保存
    def create

    end

# 注文履歴一覧ページ
    def index
        # @user = User.find(params[:id])
        @orders = Order.all
        # @order = Order.find(params[:id])
    end

# 注文履歴詳細ページ
    def show
    end


    # private
    # def order_params
    #     params.require(:order).permit(:payment_method,)
=======
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
>>>>>>> master
end
