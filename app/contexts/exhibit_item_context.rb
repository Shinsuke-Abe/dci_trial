# encoding: utf-8
class ExhibitItemContext
	# 商品出品コンテキスト

	attr_reader :user, :sales_item

	def self.call(user, sales_item)
		ExhibitItemContext.new(user, sales_item).call
	end

	def initialize(user, sales_item)
		@user, @sales_item = user, sales_item
		# 出品者ロールのミックスイン
		@user.extend Exhibitor
	end

	def call
		# 出品メソッドの呼び出し
		@user.exhibit(@sales_item)
	end
end