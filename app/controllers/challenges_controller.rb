class ChallengesController < ApplicationController
  # index/show/new/create/edit/update
  def index
    # Si challenge[params vide], on affiche challenge.all, sinon on affiche les challenge par category
    @category = params[:category]
    @challenges = @category == "All" || @category.blank? ? Challenge.all : Challenge.where(category: @category)
    @categories = Challenge.category
  end

  def show
    @user_challenge = UserChallenge.new
    @challenge = Challenge.find(params[:id])
  end
end
