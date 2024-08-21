class Step < ApplicationRecord
  belongs_to :challenge
  has_many :user_challenge_steps, dependent: :destroy
end
