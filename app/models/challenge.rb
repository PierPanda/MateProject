class Challenge < ApplicationRecord
  has_many :steps, dependent: :destroy
  has_many :users_challenges
  has_one_attached :photo

  CATEGORIES = ["All", "culturel", "sportif", "créatif", "culinaire", "technologique", "intellectuel", "développement personnel", "écologie", "famille", "bien-être", "société", "aventure"]
  TIME = ["court", "modéré", "long"]
  LEVEL = ["facile", "moyen", "difficile"]

  # def self.category
  #   cat = Challenge.all.pluck(:category).uniq
  #   cat.insert(0, "All")
  #   return cat
  # end
  #
  # def self.time
  #   time = Challenge.all.pluck(:time).uniq
  #   return time
  # end

  # def self.level
  #   level = Challenge.all.pluck(:level).uniq
  #   return level
  # end
end
