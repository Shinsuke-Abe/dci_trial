# encoding: utf-8
class SalesAccountController < ApplicationController
	before_filter sign_in
	# サンプルなので動かない

	def show
		SalesAccountContext.call(current_user)
	end
end
