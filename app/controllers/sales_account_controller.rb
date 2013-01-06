# encoding: utf-8
class SalesAccountController < ApplicationController
	# セッション処理や認証を創り込んでいないサンプルなので動かない
	# あくまでコントローラからの呼び出しイメージ

	def show
		SalesAccountContext.call(current_user)
	end
end
