Step.destroy_all
UserChallenge.destroy_all
Challenge.destroy_all
User.destroy_all
user = User.create(email: "pleinlabox@gmail.com", password: "555555")

# Category: Sportif
challenge1 = Challenge.create!(
  name: "Faire 10 000 pas par jour",
  level: "facile",
  format: "dans la vraie vie",
  category: "sportif",
  content: "Marcher 10 000 pas par jour pendant une semaine.",
  time: "long",
  reward: 50,
  public: true
)
Step.create!(
  challenge: challenge1,
  name: "Faire 10 000 pas par jour",
  position: 1
)

# Category: Créatif
challenge2 = Challenge.create!(
  name: "Photographie quotidienne",
  level: "facile",
  format: "dans la vraie vie",
  category: "créatif",
  content: "Prendre une photo créative chaque jour pendant 30 jours.", time: "long", reward: 50, public: true
)
Step.create!(
  challenge: challenge2,
  name: "Photographie quotidienne",
  position: 30
)

# Category: Culinaire
challenge3 = Challenge.create!(
  name: "Organiser un dîner à thème",
  level: "moyen",
  format: "dans la vraie vie",
  category: "culinaire",
  content: "Organiser un dîner à thème pour au moins 4 personnes, avec un menu cohérent.",
  time: "modéré",
  reward: 150,
  public: true
)
Step.create!(
  challenge: challenge3,
  name: "Organiser un dîner à thème",
  position: 4 # menu/thème/date et invitations/dîner
)

# Category: Intellectuel
challenge4 = Challenge.create!(
  name: "Compléter un cours en ligne",
  level: "moyen",
  format: "en ligne",
  category: "intellectuel",
  content: "Compléter un cours en ligne dans un domaine qui vous intéresse.",
  time: "long",
  reward: 100,
  public: true
)
Step.create!(
  challenge: challenge4,
  name: "Compléter un cours en ligne",
  position: 1
)

# Category: Développement personnel
challenge5 = Challenge.create!(
  name: "Tenir un journal quotidien",
  level: "moyen",
  format: "dans la vraie vie",
  category: "développement personnel",
  content: "Tenir un journal quotidien de vos pensées et objectifs pendant 30 jours.",
  time: "long",
  reward: 100,
  public: true
)
Step.create!(
  challenge: challenge5,
  name: "Tenir un journal quotidien",
  position: 30
)

# Category: Écologie
challenge6 = Challenge.create!(
  name: "Planter un arbre",
  level: "moyen",
  format: "dans la vraie vie",
  category: "écologie",
  content: "Planter un arbre dans un lieu adapté public ou privé.",
  time: "court",
  reward: 100,
  public: true
)
Step.create!(
  challenge: challenge6,
  name: "Planter un arbre",
  position: 30
)

# Category: Bien-être
challenge7 = Challenge.create!(
  name: "Défi sommeil de qualité",
  level: "moyen",
  format: "dans la vraie vie",
  category: "bien-être",
  content: "Assurer 8 heures de sommeil par nuit pendant 30 jours.",
  time: "long",
  reward: 100,
  public: true
)
Step.create!(
  challenge: challenge7,
  name: "Défi sommeil de qualité",
  position: 30
)

# Category: Société
challenge8 = Challenge.create!(
  name: "Volontariat",
  level: "facile",
  format: "dans la vraie vie",
  category: "société",
  content: "Participer à une activité de volontariat dans votre communauté pendant une journée.",
  time: "court",
  reward: 50,
  public: true
)
Step.create!(
  challenge: challenge8,
  name: "Volontariat",
  position: 1
)

# Category: Culturel
challenge9 = Challenge.create!(
  name: "Visite de musée virtuelle",
  level: "moyen",
  format: "en ligne",
  category: "culturel",
  content: "Visiter virtuellement 5 musées célèbres autour du monde en un mois.",
  time: "long",
  reward: 100,
  public: true
)
Step.create!(
  challenge: challenge9,
  name: "Visite de musée virtuelle",
  position: 5
)

# Category: Technologique
challenge10 = Challenge.create!(
  name: "Initiation à la programmation",
  level: "facile",
  format: "en ligne",
  category: "technologique",
  content: "Apprendre les bases de Python avec un cours en ligne sur 30 jours.",
  time: "long",
  reward: 50,
  public: true
)
Step.create!(
  challenge: challenge10,
  name: "Initiation à la programmation",
  position: 30
)


# Category: Famille
challenge11 = Challenge.create!(
  name: "Jeu de société en famille",
  level: "facile",
  format: "dans la vraie vie",
  category: "famille",
  content: "Organiser une soirée jeu de société avec votre famille une fois par semaine pendant un mois.",
  time: "long",
  reward: 50,
  public: true
)
Step.create!(
  challenge: challenge11,
  name: "Jeu de société en famille",
  position: 4
)

# Category: Aventure
challenge12 = Challenge.create!(
  name: "Randonnée en montagne",
  level: "facile",
  format: "dans la vraie vie",
  category: "aventure",
  content: "Faire une randonnée en montagne d'au moins 5 km.",
  time: "modéré",
  reward: 50,
  public: true
)
Step.create!(
  challenge: challenge12,
  name: "Randonnée en montagne",
  position: 3 # choisir trajet / prépa équipement / réaliser rando
)

UserChallenge.create(user: user, challenge: challenge5, done: true)
UserChallenge.create(user: user, challenge: challenge7)
UserChallenge.create(user: user, challenge: challenge8)

print(Challenge.count)
