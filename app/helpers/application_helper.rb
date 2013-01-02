module ApplicationHelper
	def current_user
		User.find(session[:id])
	end

	def sign_in
		session[:id] = 1 # サンプル用の仮番
	end
end
