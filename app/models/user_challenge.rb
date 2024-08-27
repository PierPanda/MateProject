class UserChallenge < ApplicationRecord
  belongs_to :user
  belongs_to :challenge
  has_many :user_challenge_steps, dependent: :destroy
  after_update :increase_score


  after_create_commit :create_user_challenge_steps

  def score_percentage
    completed_steps = user_challenge_steps.where(status: true).count
    total_steps = challenge.steps.count
    return 0 if total_steps == 0
    percentage = (completed_steps.to_f / total_steps.to_f) * 100
    percentage.round(2)
  end

  def all_steps_done?
    user_challenge_steps.where(status: false).empty?
  end
    # si toutes les user_challenges_step de ce challenges ont un statut done

  def done!
    self.update(done: true)
  end


  private

  def create_user_challenge_steps
    challenge.steps.each do |step|
      UserChallengeStep.create(user_challenge: self, status: false, step: step)
    end
  end

  def increase_score
    if self.done?
      self.user.score += self.challenge.reward
      self.user.save
    end
  end
end
