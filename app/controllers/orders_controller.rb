class OrdersController < ApplicationController
  def new

    @order = Order.new   # 新しい注文オブジェクトを作成
    @product = Product.find(params[:product_id])   # URLから商品を取得
  end
# 注文内容の確認画面
  def confirm
    @order = Order.new(order_params)          # フォームから送信された注文情報を取得
    @product = Product.find(order_params[:product_id]) # 注文対象の商品を取得
    @order.user = current_user  # 現在のユーザーを注文に紐付け

    if @order.valid?
        @order.total_price = cal_total_price(@product.price, @order.count) # 合計金額を計算して設定
      else
        # バリデーションNGなら入力画面に戻る
        render :new and return
    end
  end

  private

    # 許可する注文パラメータの設定（ストロングパラメータ）
    def order_params
      params.require(:order).permit(:total_price, :address, :count, :product_id)
    end

    # 合計金額を計算
    def cal_total_price(price, count)
      return price * count  # 商品価格と個数を掛けて合計金額を返す
    end



end
