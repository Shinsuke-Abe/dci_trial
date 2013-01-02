# encoding:utf-8
class SalesAccountContext
	# 売上管理コンテキスト

	attr_reader :user

	def self.call(user)
		SalesAccountContext.new(user).call
	end

	def initialize(user)
		@user = user
		# 出品者ロールのミックスイン
		@user.extend Exhibit
	end

	def call
		# 売上管理メソッドの呼び出し
		@user.sales_account
	end
end