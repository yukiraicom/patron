class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    User.create(userParams)
  end

  private
  def userParams
    binding.pry
    params.require(:user).permit(:username, :email, :password)
  end
end
