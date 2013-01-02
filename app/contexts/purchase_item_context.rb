# encoding: utf-8
class PurchaseItemContext
	# 商品購入コンテキスト

	attr_reader :user, :sales_item

	def self.call(user, sales_item)
		PurchaseItemContext.new(user, sales_item).call
	end

	def initialize(user, sales_item)
		@user, @sales_item = user, sales_item
		# Customerロールのミックスイン
		@user.extend Customer
	end

	def call
		# 購入メソッドの呼び出し
		@user.purchase(@sales_item.id)
	end
end