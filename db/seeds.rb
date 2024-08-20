# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Challenge.destroy_all

# Category: Sportif
Challenge.create!(name: "Faire 10 000 pas par jour", level: "facile", format: "dans la vraie vie", category: "sportif", content: "Marcher 10 000 pas par jour pendant une semaine.", time: "long", reward: 50, public: true)
Challenge.create!(name: "Entraînement HIIT quotidien", level: "moyen", format: "vidéo", category: "sportif", content: "Suivre une séance d'entraînement HIIT de 20 minutes chaque jour pendant 2 semaines.", time: "modéré", reward: 100, public: true)
Challenge.create!(name: "Participer à une course d'obstacles", level: "difficile", format: "dans la vraie vie", category: "sportif", content: "Participer et terminer une course d'obstacles de type Spartan Race ou Tough Mudder.", time: "long", reward: 200, public: true)
Challenge.create!(name: "Épreuve de natation en eau libre", level: "difficile", format: "dans la vraie vie", category: "sportif", content: "Nager une distance de 2 km en eau libre.", time: "modéré", reward: 150, public: true)

# Category: Créatif
Challenge.create!(name: "Photographie quotidienne", level: "facile", format: "dans la vraie vie", category: "créatif", content: "Prendre une photo créative chaque jour pendant 30 jours.", time: "long", reward: 50, public: true)
Challenge.create!(name: "Créer une bande dessinée", level: "moyen", format: "dans la vraie vie", category: "créatif", content: "Créer une bande dessinée originale de 10 pages.", time: "long", reward: 100, public: true)
Challenge.create!(name: "Peinture murale", level: "difficile", format: "dans la vraie vie", category: "créatif", content: "Peindre une fresque murale dans un espace public ou privé.", time: "long", reward: 200, public: true)
Challenge.create!(name: "Composez une chanson", level: "difficile", format: "audio", category: "créatif", content: "Écrire et composer une chanson originale de A à Z.", time: "long", reward: 200, public: true)

# Category: Culinaire
Challenge.create!(name: "Préparer un repas à 3 plats", level: "facile", format: "dans la vraie vie", category: "culinaire", content: "Préparer un repas complet avec entrée, plat principal et dessert.", time: "court", reward: 50, public: true)
Challenge.create!(name: "Apprendre à faire du pain maison", level: "moyen", format: "dans la vraie vie", category: "culinaire", content: "Apprendre à faire du pain maison, de la pâte à la cuisson.", time: "modéré", reward: 100, public: true)
Challenge.create!(name: "Organiser un dîner à thème", level: "moyen", format: "dans la vraie vie", category: "culinaire", content: "Organiser un dîner à thème pour au moins 4 personnes, avec un menu cohérent.", time: "modéré", reward: 150, public: true)
Challenge.create!(name: "Créer un nouveau plat", level: "difficile", format: "dans la vraie vie", category: "culinaire", content: "Innover en créant un plat entièrement nouveau et original.", time: "modéré", reward: 200, public: true)

# Category: Intellectuel
Challenge.create!(name: "Lire un livre", level: "facile", format: "dans la vraie vie", category: "intellectuel", content: "Lire un livre de votre choix en une semaine.", time: "long", reward: 50, public: true)
Challenge.create!(name: "Apprendre une nouvelle langue", level: "moyen", format: "en ligne", category: "intellectuel", content: "Commencer à apprendre une nouvelle langue et suivre 30 leçons en 30 jours.", time: "long", reward: 150, public: true)
Challenge.create!(name: "Compléter un cours en ligne", level: "moyen", format: "en ligne", category: "intellectuel", content: "Compléter un cours en ligne dans un domaine qui vous intéresse.", time: "long", reward: 100, public: true)
Challenge.create!(name: "Résoudre un Rubik's cube", level: "difficile", format: "dans la vraie vie", category: "intellectuel", content: "Apprendre à résoudre un Rubik's cube en moins de 5 minutes.", time: "modéré", reward: 200, public: true)

# Category: Développement personnel
Challenge.create!(name: "Écouter un podcast inspirant chaque jour", level: "facile", format: "audio", category: "développement personnel", content: "Écouter un podcast inspirant chaque jour pendant une semaine.", time: "long", reward: 50, public: true)
Challenge.create!(name: "Tenir un journal quotidien", level: "moyen", format: "dans la vraie vie", category: "développement personnel", content: "Tenir un journal quotidien de vos pensées et objectifs pendant un mois.", time: "long", reward: 100, public: true)
Challenge.create!(name: "Fixer un objectif SMART", level: "moyen", format: "dans la vraie vie", category: "développement personnel", content: "Fixer un objectif SMART (Spécifique, Mesurable, Atteignable, Réaliste, Temporel) et travailler à l'accomplir en 1 mois.", time: "long", reward: 100, public: true)
Challenge.create!(name: "Changer une mauvaise habitude", level: "difficile", format: "dans la vraie vie", category: "développement personnel", content: "Identifier une mauvaise habitude et la remplacer par une habitude positive sur une durée de 30 jours.", time: "long", reward: 200, public: true)

# Category: Écologie
Challenge.create!(name: "Nettoyage de plage ou de parc", level: "facile", format: "dans la vraie vie", category: "écologie", content: "Participer à une session de nettoyage d'une plage ou d'un parc local.", time: "court", reward: 50, public: true)
Challenge.create!(name: "Réduction des déchets plastiques", level: "moyen", format: "dans la vraie vie", category: "écologie", content: "Réduire votre utilisation de plastique de 50 % pendant un mois.", time: "long", reward: 100, public: true)
Challenge.create!(name: "Compensation carbone", level: "moyen", format: "en ligne", category: "écologie", content: "Calculer votre empreinte carbone et compenser par la plantation d'arbres.", time: "long", reward: 100, public: true)
Challenge.create!(name: "Adoption d'un régime alimentaire durable", level: "difficile", format: "dans la vraie vie", category: "écologie", content: "Adopter et maintenir un régime alimentaire végétarien ou végétalien pendant un mois.", time: "long", reward: 200, public: true)

# Category: Bien-être
Challenge.create!(name: "Méditation quotidienne", level: "facile", format: "audio", category: "bien-être", content: "Pratiquer la méditation pendant 15 minutes chaque jour pendant une semaine.", time: "long", reward: 50, public: true)
Challenge.create!(name: "Défi sommeil de qualité", level: "moyen", format: "dans la vraie vie", category: "bien-être", content: "Assurer 8 heures de sommeil par nuit pendant 30 jours.", time: "long", reward: 100, public: true)
Challenge.create!(name: "Détox digitale", level: "moyen", format: "dans la vraie vie", category: "bien-être", content: "Réduire l'utilisation de dispositifs électroniques à moins de 1 heure par jour pendant une semaine.", time: "long", reward: 100, public: true)
Challenge.create!(name: "Retraite de yoga", level: "difficile", format: "dans la vraie vie", category: "bien-être", content: "Participer à une retraite de yoga pendant un weekend.", time: "modéré", reward: 150, public: true)

# Category: Société
Challenge.create!(name: "Volontariat communautaire", level: "facile", format: "dans la vraie vie", category: "société", content: "Participer à une activité de volontariat dans votre communauté pendant une journée.", time: "court", reward: 50, public: true)
Challenge.create!(name: "Campagne de sensibilisation", level: "moyen", format: "en ligne", category: "société", content: "Créer et diffuser une campagne de sensibilisation sur un problème social pendant un mois.", time: "long", reward: 100, public: true)
Challenge.create!(name: "Organiser un événement local", level: "moyen", format: "dans la vraie vie", category: "société", content: "Organiser un événement communautaire pour promouvoir l'unité et la coopération locale.", time: "long", reward: 100, public: true)
Challenge.create!(name: "Initiative de recyclage", level: "difficile", format: "dans la vraie vie", category: "société", content: "Mettre en place une initiative de recyclage dans votre quartier pour un mois.", time: "long", reward: 150, public: true)

# Category: Culturel
Challenge.create!(name: "Découverte musicale", level: "facile", format: "audio", category: "culturel", content: "Écouter un nouvel album de musique d'un pays différent chaque jour pendant une semaine.", time: "long", reward: 50, public: true)
Challenge.create!(name: "Visite de musée virtuelle", level: "moyen", format: "en ligne", category: "culturel", content: "Visiter virtuellement 5 musées célèbres autour du monde en un mois.", time: "long", reward: 100, public: true)
Challenge.create!(name: "Filmographie d'un réalisateur", level: "moyen", format: "vidéo", category: "culturel", content: "Regarder tous les films d'un réalisateur célèbre en un mois.", time: "long", reward: 100, public: true)
Challenge.create!(name: "Cuisine internationale", level: "difficile", format: "dans la vraie vie", category: "culturel", content: "Cuisiner et documenter un plat de 10 pays différents en un mois.", time: "long", reward: 200, public: true)

# Category: Technologique
Challenge.create!(name: "Initiation à la programmation", level: "facile", format: "en ligne", category: "technologique", content: "Apprendre les bases de Python avec un cours en ligne sur 30 jours.", time: "long", reward: 50, public: true)
Challenge.create!(name: "Développer une application simple", level: "moyen", format: "en ligne", category: "technologique", content: "Développer une application mobile simple qui résout un problème courant.", time: "long", reward: 100, public: true)
Challenge.create!(name: "Hackathon virtuel", level: "moyen", format: "en ligne", category: "technologique", content: "Participer à un hackathon en ligne et développer un prototype fonctionnel.", time: "long", reward: 100, public: true)
Challenge.create!(name: "Projet de robotique", level: "difficile", format: "dans la vraie vie", category: "technologique", content: "Construire un petit robot capable de réaliser des tâches simples.", time: "long", reward: 200, public: true)

# Category: Famille
Challenge.create!(name: "Jeu de société en famille", level: "facile", format: "dans la vraie vie", category: "famille", content: "Organiser une soirée jeu de société avec votre famille une fois par semaine pendant un mois.", time: "long", reward: 50, public: true)
Challenge.create!(name: "Projet de jardinage familial", level: "moyen", format: "dans la vraie vie", category: "famille", content: "Démarrer un petit jardin potager avec l'aide de votre famille.", time: "long", reward: 100, public: true)
Challenge.create!(name: "Histoire familiale", level: "moyen", format: "dans la vraie vie", category: "famille", content: "Créer un arbre généalogique détaillé et découvrir l'histoire de votre famille.", time: "long", reward: 100, public: true)
Challenge.create!(name: "Camping familial", level: "difficile", format: "dans la vraie vie", category: "famille", content: "Planifier et réaliser un weekend de camping avec toute la famille.", time: "modéré", reward: 150, public: true)

# Category: Aventure
Challenge.create!(name: "Randonnée en montagne", level: "facile", format: "dans la vraie vie", category: "aventure", content: "Faire une randonnée en montagne d'au moins 5 km.", time: "modéré", reward: 50, public: true)
Challenge.create!(name: "Voyage de découverte", level: "moyen", format: "dans la vraie vie", category: "aventure", content: "Voyager vers une nouvelle destination et explorer ses principales attractions pendant une semaine.", time: "long", reward: 100, public: true)
Challenge.create!(name: "Sport extrême", level: "moyen", format: "dans la vraie vie", category: "aventure", content: "Essayer un sport extrême comme le saut en parachute, le parapente ou l'escalade.", time: "modéré", reward: 100, public: true)
Challenge.create!(name: "Expédition en nature sauvage", level: "difficile", format: "dans la vraie vie", category: "aventure", content: "Participer à une expédition organisée dans une région sauvage pour plusieurs jours.", time: "long", reward: 200, public: true)
