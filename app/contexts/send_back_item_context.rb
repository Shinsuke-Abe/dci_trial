# encoding: utf-8
class SendBackItemContext
	# 商品返品コンテキスト

	attr_reader :user, :sales_item

	def self.call(user, sales_item)
		SendBackItemContext.new(user, sales_item).call
	end

	def initialize(user, sales_item)
		@user, @sales_item = user, sales_item
		# Customerロールのミックスイン
		@user.extend Customer
	end

	def call
		# 返品メソッドの呼び出し
		@user.send_back(@sales_item.id)
	end
end