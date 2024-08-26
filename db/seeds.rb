require "open-uri"
Step.destroy_all
UserChallenge.destroy_all
Challenge.destroy_all
User.destroy_all

# Création des utilisateurs
user1 = User.create!(email: "pleinlabox@gmail.com", password: "azerty", username: "Hayamiou")
user2 = User.create!(email: "test@gmail.com", password: "azerty", username: "PierPanda")
user3 = User.create!(email: "labox@gmail.com", password: "azerty", username: "All_Anaïs")

# Category: Sportif
file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724669610/natalia-blauth-XfnnyFtobXo-unsplash_1_cjy2z9.jpg")
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
file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724669598/natalia-blauth-OuXMqJwMLHk-unsplash_rna1ef.jpg")
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
  name: "Prendre une photo créative chaque jour",
  position: 30
)

# Category: Culinaire
file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724669600/laura-adai-5jf7kzLBILE-unsplash_1_vuafkt.jpg")
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
  name: "Choisir un menu et un thème",
  position: 1
)
Step.create!(
  challenge: challenge3,
  name: "Envoyer les invitations",
  position: 2
)
Step.create!(
  challenge: challenge3,
  name: "Organiser le dîner",
  position: 3
)

# Category: Intellectuel
file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724669608/andrew-neel-cckf4TsHAuw-unsplash_cadepc.jpg")
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
  name: "Suivre et terminer un cours en ligne",
  position: 1
)

# Category: Développement personnel
file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724670719/prophsee-journals-bX-N-0sz8gg-unsplash_lz6qny.jpg")
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
  name: "Écrire dans le journal chaque jour",
  position: 30
)

# Category: Écologie
file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724669597/getty-images-evsO5NsynMk-unsplash_2_riwems.jpg")
challenge6 = Challenge.new(
  name: "Planter un arbre",
  level: "difficile",
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
file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724669591/jordan-whitt-EerxztHCjM8-unsplash_i6fcql.jpg")
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
  name: "Dormir 8 heures par nuit",
  position: 30
)

# Category: Société
file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724669594/esra-afsar-Sueh0jNPpdo-unsplash_csnm7c.jpg")
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
  name: "Participer à une activité de volontariat",
  position: 1
)

# Category: Culturel
file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724669618/michal-parzuchowski-BNvk1zqEAjc-unsplash_n4ctjj.jpg")
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
  name: "Visiter le Louvre, Paris",
  position: 1
)
Step.create!(
  challenge: challenge9,
  name: "Visiter le MoMA, New York",
  position: 2
)
Step.create!(
  challenge: challenge9,
  name: "Visiter le Rijksmuseum, Amsterdam",
  position: 3
)
Step.create!(
  challenge: challenge9,
  name: "Visiter Iziko South African Museum",
  position: 4
)
Step.create!(
  challenge: challenge9,
  name: "Visiter Museu de Arte, São Paulo",
  position: 5
)

# Category: Technologique
file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724669606/chris-ried-ieic5Tq8YMk-unsplash_ae9f54.jpg")
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
  name: "Suivre un cours Python chaque jour",
  position: 30
)

# Category: Famille
file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724669589/michal-parzuchowski-geNNFqfvw48-unsplash_vahiyz.jpg")
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
  name: "Jeu de société Semaine 1",
  position: 1
)
Step.create!(
  challenge: challenge11,
  name: "Jeu de société Semaine 2",
  position: 2
)
Step.create!(
  challenge: challenge11,
  name: "Jeu de société Semaine 3",
  position: 3
)
Step.create!(
  challenge: challenge11,
  name: "Jeu de société Semaine 4",
  position: 4
)

# Category: Aventure
file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724669615/neom-OCKa0AkSyRc-unsplash_reb5ko.jpg")
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
  name: "Choisir un itinéraire pour la randonnée",
  position: 1
)
Step.create!(
  challenge: challenge12,
  name: "Préparer l'équipement nécessaire",
  position: 2
)
Step.create!(
  challenge: challenge12,
  name: "Réaliser la randonnée",
  position: 3
)

# Category: Intellectuel
file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724671142/getty-images-Nj824vQu8vU-unsplash_lzyaji.jpg")
challenge13 = Challenge.new(
  name: "Résoudre une énigme mathématique",
  level: "moyen",
  format: "dans la vraie vie",
  category: "intellectuel",
  content: "Résoudre une énigme mathématique complexe.",
  time: "court",
  reward: 75,
  public: true
)
challenge13.photo.attach(io: file, filename: "challenge13.png", content_type: "image/png")
challenge13.save
Step.create!(
  challenge: challenge13,
  name: "Sélectionner une énigme à résoudre",
  position: 1
)
Step.create!(
  challenge: challenge13,
  name: "Travailler sur l'énigme jusqu'à la solution",
  position: 2
)

file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724671207/getty-images-8VdHghrvC0k-unsplash_fvkh9t.jpg")
challenge14 = Challenge.new(
  name: "Créer une application Python",
  level: "difficile",
  format: "en ligne",
  category: "intellectuel",
  content: "Créer une application simple en Python.",
  time: "long",
  reward: 200,
  public: true
)
challenge14.photo.attach(io: file, filename: "challenge14.png", content_type: "image/png")
challenge14.save
Step.create!(
  challenge: challenge14,
  name: "Définir les fonctionnalités de l'application",
  position: 1
)
Step.create!(
  challenge: challenge14,
  name: "Développer le code source",
  position: 2
)
Step.create!(
  challenge: challenge14,
  name: "Tester l'application pour corriger les bugs",
  position: 3
)
Step.create!(
  challenge: challenge14,
  name: "Finaliser et déployer l'application",
  position: 4
)

file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724671351/andrew-measham-O3miWJIfZA8-unsplash_zfgppu.jpg")
challenge15 = Challenge.new(
  name: "Décrypter un message codé",
  level: "moyen",
  format: "dans la vraie vie",
  category: "intellectuel",
  content: "Décrypter un message codé en utilisant une méthode classique.",
  time: "modéré",
  reward: 150,
  public: true
)
challenge15.photo.attach(io: file, filename: "challenge15.png", content_type: "image/png")
challenge15.save
Step.create!(
  challenge: challenge15,
  name: "Sélectionner un message codé à décrypter",
  position: 1
)
Step.create!(
  challenge: challenge15,
  name: "Étudier et décrypter le message",
  position: 2
)

file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724671410/ave-calvar-OlUsCI8ldCw-unsplash_moo6tl.jpg")
challenge16 = Challenge.new(
  name: "Résoudre un puzzle logique",
  level: "moyen",
  format: "dans la vraie vie",
  category: "intellectuel",
  content: "Résoudre un puzzle logique en un temps limité.",
  time: "court",
  reward: 100,
  public: true
)
challenge16.photo.attach(io: file, filename: "challenge16.png", content_type: "image/png")
challenge16.save
Step.create!(
  challenge: challenge16,
  name: "Choisir un puzzle logique à résoudre",
  position: 1
)
Step.create!(
  challenge: challenge16,
  name: "Résoudre le puzzle dans le temps imparti",
  position: 2
)

# Category: Créatif
file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724671583/israel-palacio-Y20JJ_ddy9M-unsplash_x5if8r.jpg")
challenge17 = Challenge.new(
  name: "Composer une pièce musicale",
  level: "difficile",
  format: "dans la vraie vie",
  category: "créatif",
  content: "Composer une courte pièce musicale en utilisant un logiciel de création.",
  time: "modéré",
  reward: 150,
  public: true
)
challenge17.photo.attach(io: file, filename: "challenge17.png", content_type: "image/png")
challenge17.save
Step.create!(
  challenge: challenge17,
  name: "Écrire la mélodie principale",
  position: 1
)
Step.create!(
  challenge: challenge17,
  name: "Ajouter l'accompagnement musical",
  position: 2
)
Step.create!(
  challenge: challenge17,
  name: "Mixer la pièce finale",
  position: 3
)

file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724671724/alvaro-serrano-hjwKMkehBco-unsplash_mxfl5e.jpg")
challenge18 = Challenge.new(
  name: "Écrire un poème",
  level: "facile",
  format: "dans la vraie vie",
  category: "créatif",
  content: "Écrire un poème sur un thème imposé.",
  time: "court",
  reward: 50,
  public: true
)
challenge18.photo.attach(io: file, filename: "challenge18.png", content_type: "image/png")
challenge18.save
Step.create!(
  challenge: challenge18,
  name: "Choisir un thème pour le poème",
  position: 1
)
Step.create!(
  challenge: challenge18,
  name: "Écrire le poème",
  position: 2
)

file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724671939/nik-v54wV0e2oFQ-unsplash_eafc3y.jpg")
challenge19 = Challenge.new(
  name: "Illustration digitale",
  level: "moyen",
  format: "dans la vraie vie",
  category: "créatif",
  content: "Créer une illustration digitale en moins de 2 heures.",
  time: "court",
  reward: 100,
  public: true
)
challenge19.photo.attach(io: file, filename: "challenge19.png", content_type: "image/png")
challenge19.save
Step.create!(
  challenge: challenge19,
  name: "Choisir un sujet pour l'illustration",
  position: 1
)
Step.create!(
  challenge: challenge19,
  name: "Réaliser l'illustration en 2 heures",
  position: 2
)

file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724672257/alex-shuper-J07GiRaABpk-unsplash_fnoc5o.jpg")
challenge20 = Challenge.new(
  name: "Maquette 3D",
  level: "moyen",
  format: "dans la vraie vie",
  category: "créatif",
  content: "Réaliser une maquette 3D d'un objet du quotidien.",
  time: "modéré",
  reward: 150,
  public: true
)
challenge20.photo.attach(io: file, filename: "challenge20.png", content_type: "image/png")
challenge20.save
Step.create!(
  challenge: challenge20,
  name: "Choisir un objet à modéliser",
  position: 1
)
Step.create!(
  challenge: challenge20,
  name: "Dessiner les plans de la maquette",
  position: 2
)
Step.create!(
  challenge: challenge20,
  name: "Assembler la maquette 3D",
  position: 3
)

# Category: Scientifique
file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724672254/diana-polekhina-ONuLIzB0UtA-unsplash_sw14sv.jpg")
challenge21 = Challenge.new(
  name: "Expérience scientifique maison",
  level: "moyen",
  format: "dans la vraie vie",
  category: "scientifique",
  content: "Réaliser une expérience scientifique simple à la maison.",
  time: "court",
  reward: 75,
  public: true
)
challenge21.photo.attach(io: file, filename: "challenge21.png", content_type: "image/png")
challenge21.save
Step.create!(
  challenge: challenge21,
  name: "Choisir une expérience scientifique",
  position: 1
)
Step.create!(
  challenge: challenge21,
  name: "Rassembler les matériaux nécessaires",
  position: 2
)
Step.create!(
  challenge: challenge21,
  name: "Réaliser l'expérience",
  position: 3
)

file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/t_crop/v1724672417/aleks-dorohovich-nJdwUHmaY8A-unsplash_ozhiqz.jpg")
challenge22 = Challenge.new(
  name: "Article de vulgarisation",
  level: "moyen",
  format: "en ligne",
  category: "scientifique",
  content: "Écrire un article de vulgarisation scientifique sur un sujet donné.",
  time: "modéré",
  reward: 100,
  public: true
)
challenge22.photo.attach(io: file, filename: "challenge22.png", content_type: "image/png")
challenge22.save
Step.create!(
  challenge: challenge22,
  name: "Choisir un sujet scientifique à vulgariser",
  position: 1
)
Step.create!(
  challenge: challenge22,
  name: "Faire des recherches sur le sujet",
  position: 2
)
Step.create!(
  challenge: challenge22,
  name: "Rédiger l'article en simplifiant les concepts",
  position: 3
)

file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724676602/sohrab-zia-8Wvrtl81FBg-unsplash_luvlf8.jpg")
challenge23 = Challenge.new(
  name: "Documentaire vidéo",
  level: "moyen",
  format: "en ligne",
  category: "scientifique",
  content: "Réaliser un documentaire vidéo de 5 minutes sur un phénomène naturel.",
  time: "modéré",
  reward: 150,
  public: true
)
challenge23.photo.attach(io: file, filename: "challenge23.png", content_type: "image/png")
challenge23.save
Step.create!(
  challenge: challenge23,
  name: "Choisir un phénomène naturel à documenter",
  position: 1
)
Step.create!(
  challenge: challenge23,
  name: "Écrire le script du documentaire",
  position: 2
)
Step.create!(
  challenge: challenge23,
  name: "Filmer les séquences pour le documentaire",
  position: 3
)
Step.create!(
  challenge: challenge23,
  name: "Monter les séquences filmées",
  position: 4
)

file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724676810/shubham-dhage-xZ9YeHZywrs-unsplash_ws1gaj.jpg")
challenge24 = Challenge.new(
  name: "Modèle de molécule",
  level: "moyen",
  format: "dans la vraie vie",
  category: "scientifique",
  content: "Créer un modèle d'une molécule en utilisant des matériaux recyclés.",
  time: "court",
  reward: 100,
  public: true
)
challenge24.photo.attach(io: file, filename: "challenge24.png", content_type: "image/png")
challenge24.save
Step.create!(
  challenge: challenge24,
  name: "Choisir une molécule à modéliser",
  position: 1
)
Step.create!(
  challenge: challenge24,
  name: "Collecter les matériaux recyclés",
  position: 2
)
Step.create!(
  challenge: challenge24,
  name: "Assembler le modèle 3D de la molécule",
  position: 3
)

# Category: Aventure
file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724677024/kimson-doan-AZMmUy2qL6A-unsplash_qe6mis.jpg")
challenge25 = Challenge.new(
  name: "Sortie en plein air",
  level: "facile",
  format: "dans la vraie vie",
  category: "aventure",
  content: "Organiser une sortie en plein air avec un groupe d'amis.",
  time: "court",
  reward: 50,
  public: true
)
challenge25.photo.attach(io: file, filename: "challenge25.png", content_type: "image/png")
challenge25.save
Step.create!(
  challenge: challenge25,
  name: "Choisir un lieu pour la sortie",
  position: 1
)
Step.create!(
  challenge: challenge25,
  name: "Inviter les amis pour la sortie",
  position: 2
)
Step.create!(
  challenge: challenge25,
  name: "Profiter de la sortie en plein air",
  position: 3
)

file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724669602/getty-images-cvra1TOcr_0-unsplash_dfnduq.jpg")
challenge26 = Challenge.new(
  name: "Préparer un repas complet",
  level: "moyen",
  format: "dans la vraie vie",
  category: "culinaire",
  content: "Préparer un repas complet pour 4 personnes en moins de 2 heures.",
  time: "court",
  reward: 100,
  public: true
)
challenge26.photo.attach(io: file, filename: "challenge26.png", content_type: "image/png")
challenge26.save
Step.create!(
  challenge: challenge26,
  name: "Planifier le menu du repas",
  position: 1
)
Step.create!(
  challenge: challenge26,
  name: "Faire les courses pour le repas",
  position: 2
)
Step.create!(
  challenge: challenge26,
  name: "Cuisiner les plats du repas",
  position: 3
)
Step.create!(
  challenge: challenge26,
  name: "Servir le repas à vos convives",
  position: 4
)

file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724677022/natalia-blauth-GdLDJ_RtLVo-unsplash_hrwuta.jpg")
challenge27 = Challenge.new(
  name: "Randonnée de 10 km",
  level: "moyen",
  format: "dans la vraie vie",
  category: "aventure",
  content: "Faire une randonnée de 10 km et documenter l'expérience.",
  time: "modéré",
  reward: 150,
  public: true
)
challenge27.photo.attach(io: file, filename: "challenge27.png", content_type: "image/png")
challenge27.save
Step.create!(
  challenge: challenge27,
  name: "Choisir l'itinéraire de la randonnée",
  position: 1
)
Step.create!(
  challenge: challenge27,
  name: "Préparer l'équipement pour la randonnée",
  position: 2
)
Step.create!(
  challenge: challenge27,
  name: "Réaliser la randonnée de 10 km",
  position: 3
)
Step.create!(
  challenge: challenge27,
  name: "Documenter l'expérience de la randonnée",
  position: 4
)

file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724677250/sindy-sussengut-70pQEnsbYYY-unsplash_1_mpakdy.jpg")
challenge28 = Challenge.new(
  name: "Participer à un événement sportif",
  level: "moyen",
  format: "dans la vraie vie",
  category: "aventure",
  content: "Participer à un événement sportif local.",
  time: "court",
  reward: 100,
  public: true
)
challenge28.photo.attach(io: file, filename: "challenge28.png", content_type: "image/png")
challenge28.save
Step.create!(
  challenge: challenge28,
  name: "S'inscrire à un événement sportif local",
  position: 1
)
Step.create!(
  challenge: challenge28,
  name: "Participer à l'événement sportif",
  position: 2
)

# Category: Éducation
file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724678013/mark-konig-INqYo7hwT-s-unsplash_sc9ieq.jpg")
challenge29 = Challenge.new(
  name: "Apprendre une nouvelle langue",
  level: "moyen",
  format: "en ligne",
  category: "éducation",
  content: "Apprendre les bases d'une nouvelle langue en une semaine.",
  time: "court",
  reward: 150,
  public: true
)
challenge29.photo.attach(io: file, filename: "challenge29.png", content_type: "image/png")
challenge29.save
Step.create!(
  challenge: challenge29,
  name: "Choisir la langue à apprendre",
  position: 1
)
Step.create!(
  challenge: challenge29,
  name: "Suivre un cours en ligne pour apprendre les bases",
  position: 2
)
Step.create!(
  challenge: challenge29,
  name: "Pratiquer la langue quotidiennement",
  position: 3
)

file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724671721/maria-lupan-SpITHx26SEA-unsplash_gyscnx.jpg")
challenge30 = Challenge.new(
  name: "Lire un livre en 4 jours",
  level: "moyen",
  format: "dans la vraie vie",
  category: "éducation",
  content: "Lire un livre de 300 pages en moins de 4 jours.",
  time: "court",
  reward: 100,
  public: true
)
challenge30.photo.attach(io: file, filename: "challenge30.png", content_type: "image/png")
challenge30.save
Step.create!(
  challenge: challenge30,
  name: "Choisir un livre de 300 pages à lire",
  position: 1
)
Step.create!(
  challenge: challenge30,
  name: "Diviser la lecture en portions quotidiennes",
  position: 2
)
Step.create!(
  challenge: challenge30,
  name: "Lire la portion quotidienne chaque jour",
  position: 3
)

file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724678197/florian-klauer-mk7D-4UCfmg-unsplash_sqyewg.jpg")
challenge31 = Challenge.new(
  name: "Rédiger un essai",
  level: "moyen",
  format: "en ligne",
  category: "éducation",
  content: "Rédiger un essai de 4 pages sur un sujet d'actualité en 48 heures et l'envoyer à 3 ami.es minimum !",
  time: "court",
  reward: 150,
  public: true
)
challenge31.photo.attach(io: file, filename: "challenge31.png", content_type: "image/png")
challenge31.save
Step.create!(
  challenge: challenge31,
  name: "Choisir un sujet d'actualité",
  position: 1
)
Step.create!(
  challenge: challenge31,
  name: "Faire des recherches pour l'essai",
  position: 2
)
Step.create!(
  challenge: challenge31,
  name: "Rédiger l'essai en 48 heures",
  position: 3
)

file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724680795/aaron-burden-CKlHKtCJZKk-unsplash_uwxyrd.jpg")
challenge32 = Challenge.new(
  name: "Tenir un journal quotidien",
  level: "moyen",
  format: "dans la vraie vie",
  category: "développement personnel",
  content: "Tenir un journal quotidien de vos pensées et objectifs pendant 7 jours.",
  time: "court",
  reward: 50,
  public: true
)
challenge32.photo.attach(io: file, filename: "challenge32.png", content_type: "image/png")
challenge32.save
Step.create!(
  challenge: challenge32,
  name: "Écrire chaque jour dans le journal",
  position: 1
)

# Category: Arts et musique
file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724671577/paulette-wooten-FMiczIq8orU-unsplash_a5ykre.jpg")
challenge33 = Challenge.new(
  name: "Apprendre une chanson",
  level: "moyen",
  format: "dans la vraie vie",
  category: "arts et musique",
  content: "Apprendre à chanter une nouvelle chanson, idéalement avec un instrument de musique !",
  time: "court",
  reward: 100,
  public: true
)
challenge33.photo.attach(io: file, filename: "challenge33.png", content_type: "image/png")
challenge33.save
Step.create!(
  challenge: challenge33,
  name: "Choisir une chanson à apprendre",
  position: 1
)
Step.create!(
  challenge: challenge33,
  name: "Pratiquer la chanson quotidiennement",
  position: 2
)
Step.create!(
  challenge: challenge33,
  name: "Jouer la chanson en entier",
  position: 3
)

file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724678325/getty-images-IrydWzRk8Tg-unsplash_dlck06.jpg")
challenge34 = Challenge.new(
  name: "Créer une chorégraphie",
  level: "moyen",
  format: "dans la vraie vie",
  category: "arts et musique",
  content: "Créer une chorégraphie pour une chanson populaire.",
  time: "court",
  reward: 100,
  public: true
)
challenge34.photo.attach(io: file, filename: "challenge34.png", content_type: "image/png")
challenge34.save
Step.create!(
  challenge: challenge34,
  name: "Choisir une chanson pour la chorégraphie",
  position: 1
)
Step.create!(
  challenge: challenge34,
  name: "Créer les mouvements pour la chorégraphie",
  position: 2
)
Step.create!(
  challenge: challenge34,
  name: "Pratiquer la chorégraphie jusqu'à la maîtriser",
  position: 3
)

file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724678656/matt-popovich-4ZzIzTcYsRY-unsplash_l9msdk.jpg")
challenge35 = Challenge.new(
  name: "Présentation orale",
  level: "moyen",
  format: "dans la vraie vie",
  category: "arts et musique",
  content: "Préparer une présentation orale d'un film ou d'un livre,
  l'objectif étant de donner envie de le voir ou de le lire !",
  time: "court",
  reward: 100,
  public: true
)
challenge35.photo.attach(io: file, filename: "challenge35.png", content_type: "image/png")
challenge35.save
Step.create!(
  challenge: challenge35,
  name: "Choisir un sujet culturel pour la présentation",
  position: 1
)
Step.create!(
  challenge: challenge35,
  name: "Préparer la structure de la présentation",
  position: 2
)
Step.create!(
  challenge: challenge35,
  name: "Pratiquer la présentation orale",
  position: 3
)

file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724678882/annie-spratt-nWAlCB1tyvc-unsplash_1_lgqja6.jpg")
challenge36 = Challenge.new(
  name: "Atelier artistique",
  level: "moyen",
  format: "dans la vraie vie",
  category: "arts et musique",
  content: "Participer à un atelier artistique local : peinture, macramé, origami, etc...",
  time: "modéré",
  reward: 150,
  public: true
)
challenge36.photo.attach(io: file, filename: "challenge36.png", content_type: "image/png")
challenge36.save
Step.create!(
  challenge: challenge36,
  name: "Trouver un atelier artistique local",
  position: 1
)
Step.create!(
  challenge: challenge36,
  name: "Participer activement à l'atelier",
  position: 2
)

# Category: Média et communication
file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724679058/nik-sRCvLNF1pvk-unsplash_r5vmer.jpg")
challenge37 = Challenge.new(
  name: "Créer un blog",
  level: "moyen",
  format: "en ligne",
  category: "média et communication",
  content: "Créer un blog et publier 4 articles en un mois.",
  time: "modéré",
  reward: 150,
  public: true
)
challenge37.photo.attach(io: file, filename: "challenge37.png", content_type: "image/png")
challenge37.save
Step.create!(
  challenge: challenge37,
  name: "Mettre en place le blog",
  position: 1
)
Step.create!(
  challenge: challenge37,
  name: "Publier le premier article",
  position: 2
)
Step.create!(
  challenge: challenge37,
  name: "Publier le deuxième article",
  position: 3
)
Step.create!(
  challenge: challenge37,
  name: "Publier le troisième article",
  position: 4
)
Step.create!(
  challenge: challenge37,
  name: "Publier le quatrième article",
  position: 5
)

file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724669599/brooke-lark-cqOZcjOOmRw-unsplash_eyzfne.jpg")
challenge38 = Challenge.new(
  name: "Photographie thématique",
  level: "moyen",
  format: "dans la vraie vie",
  category: "média et communication",
  content: "Apprendre les bases de la photographie et faire une série de 10 photos sur un thème donné.",
  time: "court",
  reward: 100,
  public: true
)
challenge38.photo.attach(io: file, filename: "challenge38.png", content_type: "image/png")
challenge38.save
Step.create!(
  challenge: challenge38,
  name: "Choisir un thème pour la série de photos",
  position: 1
)
Step.create!(
  challenge: challenge38,
  name: "Prendre 10 photos sur le thème choisi",
  position: 2
)

file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724679275/jakob-owens-CiUR8zISX60-unsplash_owxgwm.jpg")
challenge39 = Challenge.new(
  name: "Tourner une vidéo",
  level: "moyen",
  format: "dans la vraie vie",
  category: "média et communication",
  content: "Tourner une vidéo de 3 minutes sur un sujet de votre choix.",
  time: "court",
  reward: 100,
  public: true
)
challenge39.photo.attach(io: file, filename: "challenge39.png", content_type: "image/png")
challenge39.save
Step.create!(
  challenge: challenge39,
  name: "Définir le sujet de la vidéo",
  position: 1
)
Step.create!(
  challenge: challenge39,
  name: "Écrire un court script pour la vidéo",
  position: 2
)
Step.create!(
  challenge: challenge39,
  name: "Filmer la vidéo de 3 minutes",
  position: 3
)

file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724679368/curated-lifestyle-CB5zqj-97ek-unsplash_ghmnx7.jpg")
challenge40 = Challenge.new(
  name: "Créer un portfolio en ligne",
  level: "moyen",
  format: "en ligne",
  category: "média et communication",
  content: "Créer un portfolio en ligne pour exposer vos créations.",
  time: "modéré",
  reward: 150,
  public: true
)
challenge40.photo.attach(io: file, filename: "challenge40.png", content_type: "image/png")
challenge40.save
Step.create!(
  challenge: challenge40,
  name: "Choisir une plateforme pour le portfolio",
  position: 1
)
Step.create!(
  challenge: challenge40,
  name: "Uploader vos meilleures créations",
  position: 2
)

# Category: Technologie
file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724679462/charlesdeluvio-0bTdk1u42KY-unsplash_fwwlf6.jpg")
challenge41 = Challenge.new(
  name: "Créer une présentation simplifiée",
  level: "moyen",
  format: "en ligne",
  category: "technologie",
  content: "Créer une présentation sur un sujet complexe et la rendre accessible à un large public.",
  time: "court",
  reward: 100,
  public: true
)
challenge41.photo.attach(io: file, filename: "challenge41.png", content_type: "image/png")
challenge41.save
Step.create!(
  challenge: challenge41,
  name: "Définir le sujet complexe",
  position: 1
)
Step.create!(
  challenge: challenge41,
  name: "Simplifier les concepts pour le public",
  position: 2
)
Step.create!(
  challenge: challenge41,
  name: "Créer la présentation visuelle",
  position: 3
)

file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724679593/typerium-app-hbfBIs_Q67g-unsplash_t7p22a.jpg")
challenge42 = Challenge.new(
  name: "Développer une application mobile",
  level: "difficile",
  format: "en ligne",
  category: "technologie",
  content: "Développer une petite application mobile en moins d'une semaine.",
  time: "long",
  reward: 200,
  public: true
)
challenge42.photo.attach(io: file, filename: "challenge42.png", content_type: "image/png")
challenge42.save
Step.create!(
  challenge: challenge42,
  name: "Définir les fonctionnalités et créer une maquette",
  position: 1
)
Step.create!(
  challenge: challenge42,
  name: "Développer l'application mobile",
  position: 2
)
Step.create!(
  challenge: challenge42,
  name: "Tester l'application pour corriger les bugs",
  position: 3
)
Step.create!(
  challenge: challenge42,
  name: "Déployer l'application sur une plateforme",
  position: 4
)

file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724679693/kevin-ku-w7ZyuGYNpRQ-unsplash_espoi1.jpg")
challenge43 = Challenge.new(
  name: "Configurer un serveur web",
  level: "moyen",
  format: "en ligne",
  category: "technologie",
  content: "Configurer un serveur web et héberger un site simple.",
  time: "modéré",
  reward: 150,
  public: true
)
challenge43.photo.attach(io: file, filename: "challenge43.png", content_type: "image/png")
challenge43.save
Step.create!(
  challenge: challenge43,
  name: "Choisir une plateforme de serveur",
  position: 1
)
Step.create!(
  challenge: challenge43,
  name: "Configurer le serveur web",
  position: 2
)
Step.create!(
  challenge: challenge43,
  name: "Déployer le site sur le serveur",
  position: 3
)

file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724679824/getty-images-dIzMSYjM36s-unsplash_uvpfcz.jpg")
challenge44 = Challenge.new(
  name: "Apprendre une nouvelle technologie",
  level: "moyen",
  format: "en ligne",
  category: "technologie",
  content: "Apprendre à coder une fonctionnalité en utilisant une nouvelle technologie.",
  time: "modéré",
  reward: 150,
  public: true
)
challenge44.photo.attach(io: file, filename: "challenge44.png", content_type: "image/png")
challenge44.save
Step.create!(
  challenge: challenge44,
  name: "Choisir une nouvelle technologie à apprendre",
  position: 1
)
Step.create!(
  challenge: challenge44,
  name: "Suivre un tutoriel pour apprendre les bases",
  position: 2
)
Step.create!(
  challenge: challenge44,
  name: "Coder une fonctionnalité avec cette technologie",
  position: 3
)

# Category: Société
file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724669596/eyoel-kahssay-FyCjvyPG9Pg-unsplash_xvaimm.jpg")
challenge45 = Challenge.new(
  name: "Plan d'action - bénévolat",
  level: "difficile",
  format: "dans la vraie vie",
  category: "société",
  content: "Concevoir un plan d'action pour une activité bénévole qui s'étale sur une année.",
  time: "modéré",
  reward: 200,
  public: true
)
challenge45.photo.attach(io: file, filename: "challenge45.png", content_type: "image/png")
challenge45.save
Step.create!(
  challenge: challenge45,
  name: "Identifier un besoin ou une cause",
  position: 1
)
Step.create!(
  challenge: challenge45,
  name: "Créer un plan d'action détaillé",
  position: 2
)
Step.create!(
  challenge: challenge45,
  name: "Mettre en œuvre le plan bénévole",
  position: 3
)

file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724680380/melissa-walker-horn-76HIoI5Ni1E-unsplash_ptppg9.jpg")
challenge46 = Challenge.new(
  name: "Organiser une collecte de fonds",
  level: "moyen",
  format: "dans la vraie vie",
  category: "société",
  content: "Organiser une collecte de fonds pour une association locale.",
  time: "modéré",
  reward: 150,
  public: true
)
challenge46.photo.attach(io: file, filename: "challenge46.png", content_type: "image/png")
challenge46.save
Step.create!(
  challenge: challenge46,
  name: "Choisir une association pour la collecte",
  position: 1
)
Step.create!(
  challenge: challenge46,
  name: "Planifier le type de collecte et les détails",
  position: 2
)
Step.create!(
  challenge: challenge46,
  name: "Promouvoir l'événement de collecte",
  position: 3
)
Step.create!(
  challenge: challenge46,
  name: "Organiser et mener la collecte de fonds",
  position: 4
)

file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724680370/jason-goodman-bzqU01v-G54-unsplash_uv4dik.jpg")
challenge47 = Challenge.new(
  name: "Animer un atelier",
  level: "moyen",
  format: "dans la vraie vie",
  category: "société",
  content: "Animer un atelier pour partager vos compétences avec d'autres.",
  time: "court",
  reward: 100,
  public: true
)
challenge47.photo.attach(io: file, filename: "challenge47.png", content_type: "image/png")
challenge47.save
Step.create!(
  challenge: challenge47,
  name: "Choisir un sujet pour l'atelier",
  position: 1
)
Step.create!(
  challenge: challenge47,
  name: "Préparer un plan détaillé de l'atelier",
  position: 2
)
Step.create!(
  challenge: challenge47,
  name: "Animer l'atelier en encourageant la participation",
  position: 3
)

file = URI.open("https://res.cloudinary.com/dxglkewb3/image/upload/v1724680383/getty-images-E7UFZJ0RUzQ-unsplash_vr55z9.jpg")
challenge48 = Challenge.new(
  name: "Mission humanitaire ou écologique",
  level: "difficile",
  format: "dans la vraie vie",
  category: "société",
  content: "Participer à une mission humanitaire ou écologique.",
  time: "long",
  reward: 200,
  public: true
)
challenge48.photo.attach(io: file, filename: "challenge48.png", content_type: "image/png")
challenge48.save
Step.create!(
  challenge: challenge48,
  name: "Rechercher et choisir une mission",
  position: 1
)
Step.create!(
  challenge: challenge48,
  name: "Préparer votre engagement pour la mission",
  position: 2
)
Step.create!(
  challenge: challenge48,
  name: "Participer activement à la mission",
  position: 3
)
Step.create!(
  challenge: challenge48,
  name: "Documenter votre expérience",
  position: 4
)

# Assignation de défis aux utilisateurs
UserChallenge.create!(user: user1, challenge: challenge5, done: true)
UserChallenge.create!(user: user1, challenge: challenge7)
UserChallenge.create!(user: user1, challenge: challenge8)

print(Challenge.count)
