class ChallengesController < ApplicationController
  # index/show/new/create/edit/update
  def index
    @challenges = Challenge.all
  end

  def show
    @user_challenge = UserChallenge.new
    @challenge = Challenge.find(params[:id])
  end

end
