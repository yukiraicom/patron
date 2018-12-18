class SupportsController < ApplicationController
  def create
    @support = params.permit(:format)[:format]
    Support.create(patreon_id: current_user.id, creater_id: @support)
  end
end
