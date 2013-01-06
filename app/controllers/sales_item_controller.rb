# encoding: utf-8
class SalesItemController < ApplicationController
	# セッション処理や認証を創り込んでいないサンプルなので動かない
	# あくまでコントローラからの呼び出しイメージ

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
