class Challenge < ApplicationRecord
  has_many :steps
  has_many :users_challenges
end
