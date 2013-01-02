class User < ActiveRecord::Base
  attr_accessible :mail_address, :name

  # DCIアーキテクチャ適用前のモデルメソッド
  def purchase(item_id)
  	# 商品を購入する
  end

  def send_back(item_id)
  	# 商品を返品する
  end

  def exhibit(item)
  	# 商品を出品する
  end

  def sales_account
  	# 売上を管理する
  end
end
