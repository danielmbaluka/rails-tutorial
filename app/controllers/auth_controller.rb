class AuthController < ApplicationController
  def signup
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		flash[:success] = "Your account has been created successfully!"
  	  	redirect_to root_url
  	else
  		render :signup
  	end
  end

  private
  	def user_params
  		params.require(:user).permit(:email, :name, :password, :password_confirmation)
  	end
end
