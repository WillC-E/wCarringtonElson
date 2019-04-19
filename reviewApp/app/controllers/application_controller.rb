class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	private
	def current_user
		@current_user ||=User.find(session[ :user_id]) if session[ :user_id]

	end
	helper_method :current_user

	private
	def checkProfile
		@profile_current ||=Profile.find_by(users_id: session[:user_id])
	end
	helper_method :checkProfile


	def authorize
		redirect_to new_session_path, alert: 'Please log in or register' if current_user.nil?
	end
end
