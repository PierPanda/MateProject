class UserChallengeStepsController < ApplicationController

  def update
    @user_challenge_step = UserChallengeStep.find(params[:id])
    if @user_challenge_step.update(user_challenge_step_params)
      redirect_to user_challenge_path(@user_challenge_step.user_challenge)
    else
      render "user_challenges/show", status: :unprocessable_entity
    end
  end

  private

  def user_challenge_step_params
    params.require(:user_challenge_step).permit(:status)
  end
end
