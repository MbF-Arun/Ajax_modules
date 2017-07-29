class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	# before_action :require_login

	# private

	# def require_login
	# 	unless session[:current_user_bid]?
	# 	  flash[:error] = "You must be logged in to access this section"
	# 	  redirect_to new_login_url # halts request cycle
	# 	end
	# end
	
	def set_variables
		@color = 'yellow'
	end


end
