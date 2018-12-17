class UsersController < ApplicationController
  def index
  end
  def search
    user_name = params.require(:user).permit(:name)[:name]
    @users = User.where('username LIKE ?',"%#{user_name}%")
  end
end
