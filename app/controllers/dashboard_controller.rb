# class DashboardController < ApplicationController
#   def index
#     @user_challenges = current_user.user_challenges
#     if params[:status] == 'in_progress'
#     @user_challenges = @user_challenges.where(done: false)
#     # elsif params[:status] == 'personal_challenges'
#     #   @personal_challenges = user_challenges.personal_challenge
#     else params[:status] == 'accomplished'
#     @user_challenges = @user_challenges.where(done: true)
#     end
#   end
# end

class DashboardController < ApplicationController
  def index
    @user_challenges = current_user.user_challenges
    if params[:status] == 'in_progress'
      @user_challenges = @user_challenges.where(done: false)
    # elsif params[:status] == 'personal_challenges'
    #   @personal_challenges = Challenge.where()
    elsif params[:status] == 'accomplished'
      @user_challenges = @user_challenges.where(done: true)
    end
  end
end
