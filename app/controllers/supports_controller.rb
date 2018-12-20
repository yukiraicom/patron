class SupportsController < ApplicationController
  def create
    support_count = 0
    @support = params.permit(:format)[:format]
    Support.create(patreon_id: current_user.id, creater_id: @support)
    @supported_username = User.find(@support).username
    Notice.twieet(@supported_username) if Support.where(creater_id: @support).count > support_count # データベースチェック
    redirect_to user_path(@support)
  end

  def destroy
    @support = params.permit(:id)[:id]
    support = Support.find_by(patreon_id: current_user.id, creater_id: @support)
    support.destroy
    redirect_to user_path(@support)
  end
end
