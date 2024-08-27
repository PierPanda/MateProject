class UserChallenge < ApplicationRecord
  belongs_to :user
  belongs_to :challenge
  has_many :user_challenge_steps, dependent: :destroy
  # validates :user_id, uniqueness: { scope: :challenge_id, message: "Challenge déjà sélectionné !" }

  after_create_commit :create_user_challenge_steps

  private

  def create_user_challenge_steps
    challenge.steps.each do |step|
      UserChallengeStep.create(user_challenge: self, status: false, step: step)
    end
  end
end
