class Challenge < ApplicationRecord
  has_many :steps, dependent: :destroy
  has_many :users_challenges
  has_one_attached :photo, dependent: :destroy

  def self.category
    Challenge.all.pluck(:category).uniq
  end
end
