class Challenge < ApplicationRecord
  has_many :steps, dependent: :destroy
  has_many :users_challenges
  
  def self.category
    Challenge.all.pluck(:category).uniq
  end
end
