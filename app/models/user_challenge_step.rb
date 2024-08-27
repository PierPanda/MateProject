class UserChallengeStep < ApplicationRecord
  belongs_to :user_challenge
  belongs_to :step
  after_update :check_done

  private

  def check_done
    # vérifier si le user challenge de cette user step a toutes les user_step validées
     # mettre à jour le user_challenge de cette user step (done!)
    if self.user_challenge.all_steps_done?
      self.user_challenge.done!
    end
  end
end
