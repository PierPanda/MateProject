class UserChallengesController < ApplicationController
  # show/create/update

  def show
    @user_challenge = UserChallenge.find(params[:id])
  end

  def create
    @user_challenge = UserChallenge.new
    @user = current_user
    @challenge = Challenge.find(params[:challenge_id])
    @user_challenge.challenge = @challenge
    @user_challenge.user = @user
    if @user_challenge.save
      redirect_to user_challenge_path(@user_challenge)
    else
      redirect_to challenges_path, notice: 'Challenge déjà sélectionné !'
    end
  end

  def update
    @user = User.find(params[:id])
    @challenge = Challenge.find(params[:id])
    if @challenge.update(challenge_params)
      redirect_to user_challenges_path(@user)
    else
      render :challenge_path
    end
  end
end
