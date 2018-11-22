class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    # @user
    SupportSupport.new().supportCount
  end
end
