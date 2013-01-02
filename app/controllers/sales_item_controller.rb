# encoding: utf-8
class SalesItemController < ApplicationController
	before_filter sign_in
	# サンプルなので動かない

	def purchase_item
		# コントローラからはContextを呼び出す
		PurchaseItemContext.call(current_user, SalesItem.find(params[:id]))
	end

	def send_back_item
		SendBackItemContext.call(current_user, SalesItem.find(params[:id]))
	end

	def exhibit_item
		ExhibitItemContext.call(current_user, SalesItem.find(params[:id]))
	end
end
