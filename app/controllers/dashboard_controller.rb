class DashboardController < ApplicationController
  def index
    @user_challenges = current_user.user_challenges
  end
end
