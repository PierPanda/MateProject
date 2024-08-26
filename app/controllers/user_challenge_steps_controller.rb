class UserChallengeStepsController < ApplicationController

  def update
    @user_challenge_step = UserChallengeStep.find(params[:id])
    @user_challenge_step.update(user_challenge_step_params)
    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace("submit-#{@user_challenge_step.id}", partial: "user_challenges/simple_form_submit_checkbox", locals: { user_challenge_step: @user_challenge_step})
      end
      format.html { redirect_to user_challenge_path(@user_challenge_step.user_challenge) }
    end
  end

  private

  def user_challenge_step_params
    params.require(:user_challenge_step).permit(:status)
  end
end
