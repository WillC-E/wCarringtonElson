class SessionsController < ApplicationController
  def index
  	redirect_to root_path
  end

  def new
  end

  def create
  	user=User.find_by_userId(params[:userId])
    profile=Profile.find_by(users_id: user.id)

  	if user && user.authenticate(params[ :password])
  		session[:user_id]=user.id

      if profile.nil?
        redirect_to new_profile_path
      else
  		redirect_to root_path, notice:
  		"Welcome #{user.userId}, you are now logged in"
    end
  	else
  		render 'new', alert:
  		"Invalid username and/or password"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_path, notice:
  	"You have successfully logged out"
  end
end

