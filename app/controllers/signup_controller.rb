class SignupController < ApplicationController
  def index
  	@user = User.new
  end

  def create_user
  	@user = User.new(user_params)
  	if @user.save
  		redirect_to signup_index_path
  	else
  		redirect_to signup_index_path
  	end
  end


  private

  def user_params
  	params.require(:user).permit(:full_name, :email, :password)
  end
end
