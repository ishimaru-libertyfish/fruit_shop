class Product < ApplicationRecord
    validates :name, presence: true  # 商品名を必須項目に
    validates :price, presence: true # 価格を必須項目に

    has_many :cart_items
    has_many :order_details
    has_many :orders, through: :order_details

    # Active Storage（商品画像）
    has_one_attached :photo

    # 商品画像のサムネイルを生成
    def thumbnail
      photo.variant(resize_to_limit: [150, 150]).processed  # 画像を 150x150 ピクセル以内にリサイズ
    end
end
