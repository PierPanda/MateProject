class Challenge < ApplicationRecord
  has_many :steps, dependent: :destroy
  has_many :users_challenges

  def self.category
    cat = Challenge.all.pluck(:category).uniq
    cat.insert(0, "All")
    return cat
  end
end
