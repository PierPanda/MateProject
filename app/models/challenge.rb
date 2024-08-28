class Challenge < ApplicationRecord
  has_many :steps, dependent: :destroy
  has_many :users_challenges
  has_one_attached :photo

  CATEGORIES = ["Tous", "Culturel", "Sportif", "Créatif", "Culinaire", "Technologique", "Intellectuel", "Développement personnel", "Écologie", "Famille", "Bien-être", "Société", "Aventure"]
  TIME = ["Court", "Modéré", "Long"]
  LEVEL = ["Facile", "Moyen", "Difficile"]

end

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
