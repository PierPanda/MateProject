class Step < ApplicationRecord
  belongs_to :challenge
  has_many :user_challenges_steps
end
