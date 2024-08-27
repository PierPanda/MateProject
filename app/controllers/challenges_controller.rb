class ChallengesController < ApplicationController
  # index/show/new/create/edit/update
  def index
    # Si challenge[params vide], on affiche challenge.all, sinon on affiche les challenge par category
    @category = params[:category]
    @challenges = @category == "All" || @category.blank? ? Challenge.all : Challenge.where(category: @category)
    @categories = Challenge::CATEGORIES
  end

  def show
    @user_challenge = UserChallenge.new
    @challenge = Challenge.find(params[:id])
  end

  def new
    @categories = Challenge::CATEGORIES
    @levels = Challenge::LEVEL
    @times = Challenge::TIME
    @challenge = Challenge.new
  end

  def create
    #recupérer les steps et itérer dessus pour les créer avec un step.new
    # Instancier un challenge avec les challenge params
    # Appeler le service ChallengeOpenAI avec le challenge en argument

    @challenge = Challenge.new(challenge_params)
    @challenge_openai_service = ChallengeOpenai.new(@challenge)
    @challenge_openai_service.call
    if @challenge.save
      redirect_to challenge_path(@challenge)
    else
      render :new , status: :unprocessable_entity
    end
  end

  private

  def challenge_params
    params.require(:challenge).permit(:level, :category, :time, :content, :submit)
  end
end
