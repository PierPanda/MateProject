require "open-uri"
Step.destroy_all
UserChallenge.destroy_all
Challenge.destroy_all
User.destroy_all
user = User.create(email: "pleinlabox@gmail.com", password: "555555")

# Category: Sportif
file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724169036/natalia-blauth-XfnnyFtobXo-unsplash_j8jxtc.jpg")
challenge1 = Challenge.new(
  name: "Faire 10 000 pas par jour",
  level: "facile",
  format: "dans la vraie vie",
  category: "sportif",
  content: "Marcher 10 000 pas par jour pendant une semaine.",
  time: "long",
  reward: 50,
  public: true
)
challenge1.photo.attach(io: file, filename: "challenge1.png", content_type: "image/png")
challenge1.save

Step.create!(
  challenge: challenge1,
  name: "Faire 10 000 pas par jour",
  position: 1
)

# Category: Créatif
file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724169035/getty-images--M5qXJdoHUI-unsplash_jcrs1a.jpg")
challenge2 = Challenge.new(
  name: "Photographie quotidienne",
  level: "facile",
  format: "dans la vraie vie",
  category: "créatif",
  content: "Prendre une photo créative chaque jour pendant 30 jours.", time: "long", reward: 50, public: true
)
challenge2.photo.attach(io: file, filename: "challenge2.png", content_type: "image/png")
challenge2.save
Step.create!(
  challenge: challenge2,
  name: "Photographie quotidienne",
  position: 30
)

# Category: Culinaire
file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724420548/laura-adai-5jf7kzLBILE-unsplash_bn00wo.jpg")
challenge3 = Challenge.new(
  name: "Organiser un dîner à thème",
  level: "moyen",
  format: "dans la vraie vie",
  category: "culinaire",
  content: "Organiser un dîner à thème pour au moins 4 personnes, avec un menu cohérent.",
  time: "modéré",
  reward: 150,
  public: true
)
challenge3.photo.attach(io: file, filename: "challenge3.png", content_type: "image/png")
challenge3.save
Step.create!(
  challenge: challenge3,
  name: "Organiser un dîner à thème",
  position: 4 # menu/thème/date et invitations/dîner
)

# Category: Intellectuel
file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724420543/getty-images-SP1eE3q6MY8-unsplash_dt2a9x.jpg")
challenge4 = Challenge.new(
  name: "Compléter un cours en ligne",
  level: "moyen",
  format: "en ligne",
  category: "intellectuel",
  content: "Compléter un cours en ligne dans un domaine qui vous intéresse.",
  time: "long",
  reward: 100,
  public: true
)
challenge4.photo.attach(io: file, filename: "challenge4.png", content_type: "image/png")
challenge4.save
Step.create!(
  challenge: challenge4,
  name: "Compléter un cours en ligne",
  position: 1
)

# Category: Développement personnel
file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724420544/joshua-hoehne-uRf4Yals3ew-unsplash_nndnok.jpg")
challenge5 = Challenge.new(
  name: "Tenir un journal quotidien",
  level: "moyen",
  format: "dans la vraie vie",
  category: "développement personnel",
  content: "Tenir un journal quotidien de vos pensées et objectifs pendant 30 jours.",
  time: "long",
  reward: 100,
  public: true
)
challenge5.photo.attach(io: file, filename: "challenge5.png", content_type: "image/png")
challenge5.save
Step.create!(
  challenge: challenge5,
  name: "Tenir un journal quotidien",
  position: 30
)

# Category: Écologie
file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724169037/getty-images-evsO5NsynMk-unsplash_ygecjw.jpg")
challenge6 = Challenge.new(
  name: "Planter un arbre",
  level: "moyen",
  format: "dans la vraie vie",
  category: "écologie",
  content: "Planter un arbre dans un lieu adapté public ou privé.",
  time: "court",
  reward: 100,
  public: true
)
challenge6.photo.attach(io: file, filename: "challenge6.png", content_type: "image/png")
challenge6.save
Step.create!(
  challenge: challenge6,
  name: "Planter un arbre",
  position: 30
)

# Category: Bien-être
file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724420543/daniel-martinez-qgj2fSHiQjQ-unsplash_mloe9g.jpg")
challenge7 = Challenge.new(
  name: "Défi sommeil de qualité",
  level: "moyen",
  format: "dans la vraie vie",
  category: "bien-être",
  content: "Assurer 8 heures de sommeil par nuit pendant 30 jours.",
  time: "long",
  reward: 100,
  public: true
)
challenge7.photo.attach(io: file, filename: "challenge7.png", content_type: "image/png")
challenge7.save
Step.create!(
  challenge: challenge7,
  name: "Défi sommeil de qualité",
  position: 30
)

# Category: Société
file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724420539/ahmet-kurt-iwTCGwgFLaE-unsplash_uo3ze9.jpg")
challenge8 = Challenge.new(
  name: "Volontariat",
  level: "facile",
  format: "dans la vraie vie",
  category: "société",
  content: "Participer à une activité de volontariat dans votre communauté pendant une journée.",
  time: "court",
  reward: 50,
  public: true
)
challenge8.photo.attach(io: file, filename: "challenge8.png", content_type: "image/png")
challenge8.save
Step.create!(
  challenge: challenge8,
  name: "Volontariat",
  position: 1
)

# Category: Culturel
file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724420538/getty-images-c_JmmUnX5Ws-unsplash_l5w6gn.jpg")
challenge9 = Challenge.new(
  name: "Visite de musée virtuelle",
  level: "moyen",
  format: "en ligne",
  category: "culturel",
  content: "Visiter virtuellement 5 musées célèbres autour du monde en un mois.",
  time: "long",
  reward: 100,
  public: true
)
challenge9.photo.attach(io: file, filename: "challenge9.png", content_type: "image/png")
challenge9.save
Step.create!(
  challenge: challenge9,
  name: "Le Louvre, Paris",
  position: 1
)
Step.create!(
  challenge: challenge9,
  name: "Le MoMA, New York",
  position: 2
)
Step.create!(
  challenge: challenge9,
  name: "Le Rijksmuseum, Amsterdam",
  position: 3
)
Step.create!(
  challenge: challenge9,
  name: "Iziko South African Museum, Cape Town",
  position: 4
)
Step.create!(
  challenge: challenge9,
  name: "Museu de Arte, São Paulo",
  position: 5
)

# Category: Technologique
file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724420539/getty-images-duYNQBketJg-unsplash_ooxbbs.jpg")
challenge10 = Challenge.new(
  name: "Initiation à la programmation",
  level: "facile",
  format: "en ligne",
  category: "technologique",
  content: "Apprendre les bases de Python avec un cours en ligne sur 30 jours.",
  time: "long",
  reward: 50,
  public: true
)
challenge10.photo.attach(io: file, filename: "challenge10.png", content_type: "image/png")
challenge10.save
Step.create!(
  challenge: challenge10,
  name: "Initiation à la programmation",
  position: 30
)

# Category: Famille
file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724420537/ahmed-OsP41Kdn53Q-unsplash_zoqj7f.jpg")
challenge11 = Challenge.new(
  name: "Jeu de société en famille",
  level: "facile",
  format: "dans la vraie vie",
  category: "famille",
  content: "Organiser une soirée jeu de société avec votre famille une fois par semaine pendant un mois.",
  time: "long",
  reward: 50,
  public: true
)
challenge11.photo.attach(io: file, filename: "challenge11.png", content_type: "image/png")
challenge11.save
Step.create!(
  challenge: challenge11,
  name: "Semaine 1",
  position: 1
)
Step.create!(
  challenge: challenge11,
  name: "Semaine 2",
  position: 2
)
Step.create!(
  challenge: challenge11,
  name: "Semaine 3",
  position: 3
)
Step.create!(
  challenge: challenge11,
  name: "Semaine 4",
  position: 4
)

# Category: Aventure
file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724420537/hans-isaacson-rG0ffdofZN8-unsplash_ixvoqi.jpg")
challenge12 = Challenge.new(
  name: "Randonnée en montagne",
  level: "facile",
  format: "dans la vraie vie",
  category: "aventure",
  content: "Faire une randonnée en montagne d'au moins 5 km.",
  time: "modéré",
  reward: 50,
  public: true
)
challenge12.photo.attach(io: file, filename: "challenge12.png", content_type: "image/png")
challenge12.save
Step.create!(
  challenge: challenge12,
  name: "Choisis ton itinéraire !",
  position: 1
)
Step.create!(
  challenge: challenge12,
  name: "Ton équipement est prêt Mate ?",
  position: 2
)
Step.create!(
  challenge: challenge12,
  name: "Checke la box si tu as réalisé cette rando !",
  position: 3
)

UserChallenge.create(user: user, challenge: challenge5, done: true)
UserChallenge.create(user: user, challenge: challenge7)
UserChallenge.create(user: user, challenge: challenge8)

print(Challenge.count)
