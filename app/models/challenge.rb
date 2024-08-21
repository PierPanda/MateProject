class Challenge < ApplicationRecord
  has_many :steps, dependent: :destroy
  has_many :users_challenges
end
