class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @support = Support.new
    @is_supported = Support.exists?(patreon_id: current_user.id, creater_id: @user)
  end

  def search
    user_name = params.require(:user).permit(:name)[:name]
    @users = User.where('username LIKE ?',"%#{user_name}%")
  end
end
