class UsersController < ApplicationController

  def index
  end

  def show
  end

  def new
    @user=User.new
  end

  def create
    @user=User.new(user_params)
    if @user.save
       redirect_to static_pages_home_path, notice:
       "Welcome #{@user.userId}!"
    else
       render 'new'
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

   private
    def user_params
      params.require(:user).permit(:userId, :email, :password, :password_confirmation)
    end
end
