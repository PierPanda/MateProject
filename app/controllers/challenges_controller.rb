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

  def new
    @category = params[:category]
    @categories = Challenge.category
    @level = params[:level]
    @levels = Challenge.level
    @time = params[:time]
    @times = Challenge.time
    @challenge = Challenge.new
  end

  def create
    #recupérer les steps et itérer dessus pour les créer avec un step.new
    @challenge = Challenge.new(challenge_params)
  end

  private

  def challenge_params
    params.require(:challenge).permit(:choix)
  end
end
