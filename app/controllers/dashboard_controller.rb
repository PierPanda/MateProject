class DashboardController < ApplicationController
  def index
    @user_challenges = current_user.user_challenges
    if params[:status] == "in_progress"
      @user_challenges = @user_challenges.where(done: false)
    end
  end
end
