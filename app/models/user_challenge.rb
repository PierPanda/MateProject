class UserChallenge < ApplicationRecord
  belongs_to :user
  belongs_to :challenge
  has_many :user_challenge_steps

  after_create_commit :create_user_challenge_steps

  private

  def create_user_challenge_steps
    challenge.steps.each do |step|
      UserChallengeStep.create(user_challenge: self, status: false, step: step)
    end
  end

end
