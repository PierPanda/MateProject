# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Step.destroy_all
Challenge.destroy_all

# Category: Sportif
challenge1 = Challenge.create!(name: "Faire 10 000 pas par jour", level: "facile", format: "dans la vraie vie", category: "sportif", content: "Marcher 10 000 pas par jour pendant une semaine.", time: "long", reward: 50, public: true)
Step.create!(challenge: challenge1, name: "Faire 10 000 pas par jour", position: 1)

# Category: Créatif
Challenge.create!(name: "Photographie quotidienne", level: "facile", format: "dans la vraie vie", category: "créatif", content: "Prendre une photo créative chaque jour pendant 30 jours.", time: "long", reward: 50, public: true)

# Category: Culinaire
Challenge.create!(name: "Organiser un dîner à thème", level: "moyen", format: "dans la vraie vie", category: "culinaire", content: "Organiser un dîner à thème pour au moins 4 personnes, avec un menu cohérent.", time: "modéré", reward: 150, public: true)

# Category: Intellectuel
Challenge.create!(name: "Compléter un cours en ligne", level: "moyen", format: "en ligne", category: "intellectuel", content: "Compléter un cours en ligne dans un domaine qui vous intéresse.", time: "long", reward: 100, public: true)

# Category: Développement personnel
Challenge.create!(name: "Tenir un journal quotidien", level: "moyen", format: "dans la vraie vie", category: "développement personnel", content: "Tenir un journal quotidien de vos pensées et objectifs pendant un mois.", time: "long", reward: 100, public: true)

# Category: Écologie
Challenge.create!(name: "Planter un arbre", level: "moyen", format: "dans la vraie vie", category: "écologie", content: "Planter un arbre dans un lieu adapté public ou privé.", time: "court", reward: 100, public: true)

# Category: Bien-être
Challenge.create!(name: "Défi sommeil de qualité", level: "moyen", format: "dans la vraie vie", category: "bien-être", content: "Assurer 8 heures de sommeil par nuit pendant 30 jours.", time: "long", reward: 100, public: true)

# Category: Société
Challenge.create!(name: "Volontariat", level: "facile", format: "dans la vraie vie", category: "société", content: "Participer à une activité de volontariat dans votre communauté pendant une journée.", time: "court", reward: 50, public: true)

# Category: Culturel
Challenge.create!(name: "Visite de musée virtuelle", level: "moyen", format: "en ligne", category: "culturel", content: "Visiter virtuellement 5 musées célèbres autour du monde en un mois.", time: "long", reward: 100, public: true)

# Category: Technologique
Challenge.create!(name: "Initiation à la programmation", level: "facile", format: "en ligne", category: "technologique", content: "Apprendre les bases de Python avec un cours en ligne sur 30 jours.", time: "long", reward: 50, public: true)

# Category: Famille
Challenge.create!(name: "Jeu de société en famille", level: "facile", format: "dans la vraie vie", category: "famille", content: "Organiser une soirée jeu de société avec votre famille une fois par semaine pendant un mois.", time: "long", reward: 50, public: true)

# Category: Aventure
Challenge.create!(name: "Randonnée en montagne", level: "facile", format: "dans la vraie vie", category: "aventure", content: "Faire une randonnée en montagne d'au moins 5 km.", time: "modéré", reward: 50, public: true)

print(Challenge.count)
