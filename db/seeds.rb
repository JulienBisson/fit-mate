# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded wgvjygujgjjbjbith the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "Cleaning database..."

EventParticipant.destroy_all
Message.destroy_all
Chatbox.destroy_all
Event.destroy_all
User.destroy_all

puts 'Creating user...'

alexia = User.create!(first_name: "Alexia", last_name: "Nicoleau", username: "alexia25", age: 25,
  email: "alexia.nicoleau@gmail.com", password: "secret",
  description: "étudiante en littérature et passionnée de lecture",
  favorite_sport: "yoga", sport_level: "intermediaire")

file = File.open(Rails.root.join("db/images/alexia.jpg"))
alexia.photo.attach(io: file, filename: "alexia.jpg", content_type: "image/jpeg")
alexia.save!

julien = User.create!(first_name: "Julien", last_name: "Bisson", username: "JulienBsn", age: 32,
  email: "julien.bisson@gmail.com", password: "secret",
  description: "Je suis un étudiant en informatique qui aime le cinéma, la moto et les jeux vidéo.
  Je suis curieux, créatif et sociable.",
  favorite_sport: "basketball", sport_level: "intermediaire")

file = File.open(Rails.root.join("db/images/julien.png"))
julien.photo.attach(io: file, filename: "julien.png", content_type: "image/png")
julien.save!

lea = User.create!(first_name: "Lea", last_name: "richmond", username: "LeaR", age: 22,
  email: "Lea.richmond@gmail.com", password: "secret",
  description: "Je suis une infirmière qui aime voyager, lire et faire du yoga.
  Je suis douce, généreuse et dynamique.",
  favorite_sport: "cyclisme", sport_level: "intermediaire")

file = File.open(Rails.root.join("db/images/lea.jpg"))
lea.photo.attach(io: file, filename: "lea.jpg", content_type: "image/jpeg")
lea.save!

maxime = User.create!(first_name: "Maxime", last_name: "richard", username: "MaxR", age: 28,
  email: "Maxime.richard@gmail.com", password: "secret",
  description: "Je suis un ingénieur qui aime la nature, les animaux et la photographie.
  Je suis aventurier, passionné et drôle.",
  favorite_sport: "tennis", sport_level: "intermediaire")

file = File.open(Rails.root.join("db/images/maxime.jpg"))
maxime.photo.attach(io: file, filename: "maxime.jpg", content_type: "image/jpeg")
maxime.save!

sarah = User.create!(first_name: "Sarah", last_name: "Dupont", username: "SarahD", age: 24,
  email: "Sarah.Dupont@gmail.com", password: "secret",
  description: "Je suis une professeure de français qui aime l’art, la littérature et le théâtre.
  Je suis cultivée, élégante et sympathique.",
  favorite_sport: "fitness", sport_level: "intermediaire")

file = File.open(Rails.root.join("db/images/sarah.jpg"))
sarah.photo.attach(io: file, filename: "sarah.jpg", content_type: "image/jpeg")
sarah.save!

lucas = User.create!(first_name: "Lucas", last_name: "Bernard", username: "LucasB", age: 37,
  email: "Lucas.Bernard@gmail.com", password: "secret",
  description: "Je suis un avocat qui aime le sport, la politique et le vin. Je suis ambitieux, charismatique et loyal.",
  favorite_sport: "paddle", sport_level: "intermediaire")

file = File.open(Rails.root.join("db/images/lucas.jpg"))
lucas.photo.attach(io: file, filename: "lucas.jpg", content_type: "image/jpeg")
lucas.save!

puts "Creating events..."

event1 = Event.create!(
  organizer_id: alexia.id,
  sport: 'yoga',
  title: "Yoga pour tous",
  description: "Rejoignez-nous pour une séance de yoga épique ! Découvrez les bienfaits millénaires sur le corps et l'esprit. Hatha yoga, respiration, postures adaptées, relaxation... Tout y est ! Que vous soyez débutant ou pro, détendez-vous, étirez-vous et vibrez en toute sérénité. Harmonie assurée ! 🧘‍♀️✨",
  localisation: "30 Allée Robert Cheval, 44980 Sainte-Luce-sur-Loire",
  event_level: "intermediaire",
  max_participant: 6,
  datetime: Date.parse("21-06-2023")
)
file = File.open(Rails.root.join("db/images/yoga.png"))
event1.photo.attach(io: file, filename: "yoga.png", content_type: "image/png")
event1.save!

event2 = Event.create!(
  organizer_id: lea.id,
  sport: 'fitness',
  title: "Fitness au Loiry",
  description: "Préparez-vous à une séance de fitness démentielle ! Découvrez les bienfaits du sport sur votre forme et votre santé. Au menu : exercices variés, adaptés à tous les niveaux, pour renforcer chaque muscle et booster votre endurance. Débutant ou pro, éclatez-vous, défoulez-vous et partagez une ambiance conviviale et bienfaisante. Rejoignez-nous pour un pur moment de plaisir et de bien-être ! 💪🔥🥳 ",
  localisation: "Bd Guichet Serex, 44120 Vertou",
  event_level: "débutant",
  max_participant: 7,
  datetime: Date.parse("17-06-2023")
)
file = File.open(Rails.root.join("db/images/fitness.png"))
event2.photo.attach(io: file, filename: "fitness.png", content_type: "image/png")
event2.save!

event3 = Event.create!(
  organizer_id: lea.id,
  sport: 'tennis',
  title: "Grand Chelem pour les nuls",
  description: "Prêt à plonger dans l'action ? Rejoignez-nous pour une partie de tennis palpitante ! Découvrez les sensations du sport de raquette le plus populaire au monde. Au menu : des matchs amicaux en solo ou en équipe. Que vous soyez débutant ou pro, amusez-vous, dépensez-vous et partagez un moment de fair-play et de respect. Venez vibrer sur le court avec nous ! 🎾💥🤩",
  localisation: "74 Bd des Anglais, 44100 Nantes",
  event_level: "débutant",
  max_participant: 3,
  datetime: Date.parse("23-06-2023")
)
file = File.open(Rails.root.join("db/images/tennis.jpg"))
event3.photo.attach(io: file, filename: "tennis.jpg", content_type: "image/jpeg")
event3.save!

event4 = Event.create!(
  organizer_id: maxime.id,
  sport: 'football',
  title: "Foot à la Beaujoire",
  description: "Venez vivre l'excitation du football à la Beaujoire à Nantes ! Rejoignez-nous pour un événement inoubliable qui enflammera votre passion. Découvrez le talent des joueurs sur le terrain verdoyant, entouré d'une ambiance électrique. Que vous soyez joueur ou fan de foot, cette invitation est pour vous. Ne manquez pas l'occasion de marquer des buts sur ce terrain légendaire. Rejoignez-nous, encouragez les autres fans et créez des souvenirs qui dureront toute une vie. Enfilez vos chaussures et vivez l'ivresse du football à la Beaujoire de Nantes. Laissez le jeu vous couper le souffle !",
  localisation: "Route de Saint-Joseph, 44300 Nantes",
  event_level: "débutant",
  max_participant: 21,
  datetime: Date.parse("10-06-2023")
)
file = File.open(Rails.root.join("db/images/football.jpg"))
event4.photo.attach(io: file, filename: "football.jpg", content_type: "image/jpeg")
event4.save!

event5 = Event.create!(
  organizer_id: lucas.id,
  sport: 'basketball',
  title: "All Star Games",
  description: "Prêt à faire vibrer le parquet ? Rejoignez-nous pour une partie de basketball survoltée ! Découvrez les sensations du sport collectif le plus joué en salle. Au menu : des matchs amicaux entre deux équipes de cinq joueurs. Que vous soyez débutant ou pro, amusez-vous, dépensez-vous et partagez un moment de fair-play et de respect. Prenez part à l'action et montrez vos talents de basketteur ! 🏀🔥😎 ",
  localisation: "6 Rue des Bourdonnières, 44200 Nantes",
  event_level: "intermediaire",
  max_participant: 8,
  datetime: Date.parse("24-06-2023")
)
file = File.open(Rails.root.join("db/images/basketball.png"))
event5.photo.attach(io: file, filename: "basketball.png", content_type: "image/png")
event5.save!

event6 = Event.create!(
  organizer_id: lucas.id,
  sport: 'boxe',
  title: "Séance de boxe",
  description: "Prêt à encaisser les coups ? Rejoignez-nous pour une séance de boxe décoiffante ! Découvrez les sensations du sport de combat le plus pratiqué en salle. Au menu : des exercices variés, adaptés à tous les niveaux, qui mettront tous vos muscles à l'épreuve et amélioreront votre endurance. Que vous soyez débutant ou pro, amusez-vous, dépensez-vous et partagez un moment empreint de respect et de discipline. Rendez-vous au 5 Rue Gaston Michel, 44000 Nantes. Let's get ready to rumble! 🥊💥😎",
  localisation: "5 Rue Gaston Michel, 44000 Nantes",
  event_level: "intermediaire",
  max_participant: 2,
  datetime: Date.parse("18-06-2023")
)
file = File.open(Rails.root.join("db/images/boxe.jpg"))
event6.photo.attach(io: file, filename: "boxe.jpg", content_type: "image/jpeg")
event6.save!

event7 = Event.create!(
  organizer_id: sarah.id,
  sport: 'volleyball',
  title: "Beach's Volley",
  description: "Préparez-vous à rire, transpirer et atteindre de nouveaux sommets lors d'une session de paddle sur la Sèvre, au sud de Nantes ! Rejoignez-nous pour une expérience pleine d'amusement où vous glisserez sur les eaux pittoresques. Que vous soyez débutant ou expert, cette invitation est pour tous les aventuriers. Équilibrez-vous, riez et peut-être même faites quelques plongeons imprévus (pas de panique, c'est dans l'esprit du jeu !). Alors, enfilez votre crème solaire, libérez le paddleboardeur qui sommeille en vous et rejoignez-nous pour une journée de rires, de folies aquatiques et de paddleboard inoubliable sur la Sèvre, au sud de Nantes !",
  localisation: "101 Rue de la Trocardière, 44400 Rezé",
  event_level: "débutant",
  max_participant: 11,
  datetime: Date.parse("20-06-2023")
)
file = File.open(Rails.root.join("db/images/volleyball.jpg"))
event7.photo.attach(io: file, filename: "volleyball.jpg", content_type: "image/jpeg")
event7.save!

event8 = Event.create!(
  organizer_id: lea.id,
  sport: 'paddle',
  title: "Paddle à Beautour",
  description: "Préparez-vous à pagayer, éclabousser et rire à volonté lors d'une session de paddle sur la Sèvre, au sud de Nantes ! Rejoignez-nous pour un événement délirant où vous glisserez sur les eaux pittoresques. Que vous soyez débutant ou expert, cette invitation est pour tous les aventuriers. Équilibrez-vous, vacillez et laissez-vous surprendre par quelques plongeons inattendus (pas de souci, c'est tout le charme de l'aventure !). Alors, préparez votre crème solaire, libérez votre esprit paddle et venez vous amuser avec nous lors d'une journée mémorable de rires, d'éclaboussures et de paddle sur la Sèvre, au sud de Nantes !",
  localisation: "18 rue du Calvaire, 44000 Nantes",
  event_level: "intermediaire",
  max_participant: 5,
  datetime: Date.parse("18-06-2023")
)
file = File.open(Rails.root.join("db/images/paddle.jpg"))
event8.photo.attach(io: file, filename: "paddle.jpg", content_type: "image/jpeg")
event8.save!

event10 = Event.create!(
  organizer_id: maxime.id,
  sport: 'cyclisme',
  title: "Tour de Nantes",
  description: "Appel à tous les passionnés de vélo et aventuriers ! Rejoignez-nous pour une balade exaltante à travers les rues pittoresques de Nantes, à la découverte des emblèmes qui font la fierté de la duchesse Anne. Enfourchez vos vélos pour un parcours panoramique, passant par le magnifique Château des Ducs de Bretagne et l'effervescente Île de Nantes. Chaque coup de pédale vous fera vivre une nouvelle tranche d'histoire et de culture. Alors, sortez vos casques, préparez vos vélos et joignez-vous à nous pour une journée inoubliable de cyclisme, d'amitié et de découverte au cœur de Nantes, le royaume de la duchesse Anne.",
  localisation: "Bd Léon Bureau, 44200 Nantes",
  event_level: "débutant",
  max_participant: 10,
  datetime: Date.parse("23-06-2023")
)
file = File.open(Rails.root.join("db/images/cyclisme.jpg"))
event10.photo.attach(io: file, filename: "cyclisme.jpg", content_type: "image/jpeg")
event10.save!

event11 = Event.create!(
  organizer_id: sarah.id,
  sport: 'badminton',
  title: "A vos volants",
  description: "Préparez-vous à smasher, glisser et faire la fête comme jamais lors de notre soirée de badminton déjantée ! Rejoignez-nous pour un événement hilarant où vous pourrez brandir vos raquettes avec style et vous tordre de rire. Que vous soyez un pro du badminton ou un novice intrépide, cette soirée est placée sous le signe des échanges loufoques, des ratés spectaculaires et des mouvements de danse décalés. Attendez-vous à des coups délirants, des plongeons déjantés et des éclats de rire à n'en plus finir. Alors, attrapez votre raquette, mettez votre plus beau sourire et préparez-vous à une soirée de folie badmintonesque qui vous laissera des souvenirs mémorables !",
  localisation: "20 Rue Saint-Médard, 44300 Nantes",
  event_level: "intermediaire",
  max_participant: 5,
  datetime: Date.parse("26-06-2023")
)
file = File.open(Rails.root.join("db/images/badminton.jpg"))
event11.photo.attach(io: file, filename: "badminton.jpg", content_type: "image/jpeg")
event11.save!

event12 = Event.create!(
  organizer_id: maxime.id,
  sport: 'cyclisme',
  title: "Pédalons en Folie !",
  description: "Rejoignez-nous pour une balade à vélo inoubliable à travers les merveilles de Nantes ! Découvrez les plus beaux itinéraires, adaptés à tous les niveaux de cyclistes. Que vous soyez avide d'aventure, de nature ou de culture, venez vous évader, vous ressourcer et partager un moment convivial et enrichissant. Enfourchez votre vélo, laissez-vous séduire par les paysages époustouflants et explorez les trésors cachés de la ville. Ne manquez pas cette occasion unique de vivre une expérience cycliste exceptionnelle à Nantes ! 🚴‍♀️🌳🏰💫",
  localisation: "Rue de la Gaudinière, 44300 Nantes",
  event_level: "intermediaire",
  max_participant: 10,
  datetime: Date.parse("19-06-2023")
)
file = File.open(Rails.root.join("db/images/cyclisme.jpg"))
event12.photo.attach(io: file, filename: "cyclisme.jpg", content_type: "image/jpeg")
event12.save!

event13 = Event.create!(
  organizer_id: lucas.id,
  sport: 'musculation',
  title: "Séance de musculation",
  description: "Prêt à sculpter ton corps de super-héros ? Rejoins notre séance de musculation explosive ! Découvre les incroyables bienfaits du sport sur ta forme et ta santé. Au menu : exercices variés, adaptés à ton niveau, pour travailler tous les muscles et booster ton endurance. Que tu sois débutant ou pro, éclate-toi, défoule-toi et partage un moment convivial de pur bien-être. Viens te déchaîner et repousse tes limites avec nous ! 💪🔥🥳",
  localisation: "3 Rue René Viviani, 44200 Nantes",
  event_level: "intermediaire",
  max_participant: 5,
  datetime: Date.parse("15-06-2023")
)
file = File.open(Rails.root.join("db/images/musculation.jpg"))
event13.photo.attach(io: file, filename: "musculation.jpg", content_type: "image/jpeg")
event13.save!

event14 = Event.create!(
  organizer_id: lea.id,
  sport: 'judo',
  title: "Tatami mania",
  description: "Prêt à relever le défi du tatami ? Rejoignez notre séance de judo survoltée ! Découvrez les sensations uniques du sport de combat le plus pratiqué en France. Au programme : exercices variés, adaptés à ton niveau, pour solliciter tous les muscles et améliorer ton équilibre. Le but du jeu ? Maîtriser ton adversaire en utilisant des techniques de projection, d'immobilisation, d'étranglement ou de clé. Que tu sois débutant ou confirmé, viens t'amuser, te dépasser et partager un moment de respect et de discipline. Prépare-toi à briller sur le tatami avec nous ! 🥋💥👊",
  localisation: "Palais des Sports de Beaulieu, Rue André Tardieu, 44200 Nantes",
  event_level: "intermediaire",
  max_participant: 4,
  datetime: Date.parse("23-06-2023")
)
file = File.open(Rails.root.join("db/images/judo.jpg"))
event14.photo.attach(io: file, filename: "judo.jpg", content_type: "image/jpeg")
event14.save!

event15 = Event.create!(
  organizer_id: lea.id,
  sport: 'tennis',
  title: "Tennis Extrême: 2 vs 2",
  description: "Plongez dans une aventure tennistique palpitante ! Rejoignez-nous pour un match enflammé de tennis en duo, où l'excitation est à son comble. Affrontez vos adversaires lors de rencontres amicales survoltées. Peu importe votre niveau, venez vous éclater, vous déchaîner et vivre des sensations fortes dans une ambiance de fair-play et de respect. Faites résonner les courts de vos smashes et de vos services, et triomphez avec style. Préparez-vous à créer des souvenirs mémorables et à repousser vos limites dans cette compétition tennistique effervescente ! 🎾💥🏆",
  localisation: "Rue des Champs Garnier, 44400 Rezé",
  event_level: "débutant",
  max_participant: 4,
  datetime: Date.parse("24-06-2023")
)
file = File.open(Rails.root.join("db/images/tennis.jpg"))
event15.photo.attach(io: file, filename: "tennis.jpg", content_type: "image/jpeg")
event15.save!

event16 = Event.create!(
  organizer_id: sarah.id,
  sport: 'natation',
  title: "Swim Zone! ",
  description: "Joignez-vous à notre séance aquatique sensationnelle où la natation règne en maître. Découvrez les bienfaits incomparables de ce sport aquatique. Au programme : des exercices variés adaptés à tous les niveaux, qui sollicitent tous les muscles et boostent votre endurance. Que vous soyez débutant ou confirmé, plongez dans l'amusement, l'effort et partagez un moment de détente et de bien-être absolu. Rejoignez-nous pour une expérience aquatique qui fera des vagues de plaisir et de rafraîchissement !",
  localisation: "Allée de l'Île Gloriette, 44000 Nantes",
  event_level: "débutant",
  max_participant: 3,
  datetime: Date.parse("19-06-2023")
)
file = File.open(Rails.root.join("db/images/natation.jpg"))
event16.photo.attach(io: file, filename: "natation.jpg", content_type: "image/jpeg")
event16.save!

event17 = Event.create!(
  organizer_id: alexia.id,
  sport: 'escalade',
  title: "Vertical ascensionnel",
  description: "Rejoignez-nous pour une séance d'escalade palpitante et découvrez les sensations uniques de ce sport vertical. Au programme : des voies et des blocs adaptés à votre niveau sur notre mur artificiel. Que vous soyez débutant ou confirmé, venez vous éclater, vous surpasser et partagez un moment de coopération et de confiance. Grimpez, repoussez vos limites et forgez des souvenirs inoubliables en grimpant avec nous !",
  localisation: "27 Bd Bâtonnier Cholet, 44100 Nantes",
  event_level: "intermediaire",
  max_participant: 4,
  datetime: Date.parse("21-06-2023")
)
file = File.open(Rails.root.join("db/images/escalade.jpg"))
event17.photo.attach(io: file, filename: "escalade.jpg", content_type: "image/jpeg")
event17.save!

event18 = Event.create!(
  organizer_id: lucas.id,
  sport: 'rugby',
  title: "Tacle, drop et essais",
  description: "Joignez-vous à notre partie de rugby palpitante et découvrez l'intensité du sport collectif le plus pratiqué en Australie. Au programme : des rencontres amicales entre deux équipes. Peu importe votre niveau, venez vous éclater, vous dépasser et partager un moment de sportivité et de respect. Plongez dans l'action, enchaînez les plaquages, les courses et les essais pour vivre une expérience rugbystique inoubliable ! 🏉🔥💪",
  localisation: "2 Rue Louis Joxe, 44200 Nantes",
  event_level: "intermediaire",
  max_participant: 14,
  datetime: Date.parse("23-06-2023")
)
file = File.open(Rails.root.join("db/images/rugby.jpg"))
event18.photo.attach(io: file, filename: "rugby.jpg", content_type: "image/jpeg")
event18.save!

event19 = Event.create!(
  organizer_id: maxime.id,
  sport: 'cyclisme',
  title: "Un son de roue libre",
  description: "Rejoignez-nous pour une balade à vélo épique à travers les merveilles de Nantes. Explorez les itinéraires les plus enchanteurs, adaptés à tous les niveaux de cyclistes, des novices aux experts. Que vous recherchiez l'aventure, la nature ou la culture, cette balade est faite pour vous. Laissez-vous emporter par la liberté du vélo, ressourcez-vous en pleine nature et créez des liens avec les autres passionnés lors de moments conviviaux et de découvertes inspirantes. Préparez-vous à pédaler vers de nouvelles aventures et à vivre des sensations cyclistes extraordinaires ! 🚴‍♂️🌍🌟",
  localisation: "8 Pl. des Muses, 44800 Saint-Herblain",
  event_level: "débutant",
  max_participant: 10,
  datetime: Date.parse("17-06-2023")
)
file = File.open(Rails.root.join("db/images/cyclisme.jpg"))
event19.photo.attach(io: file, filename: "cyclisme.jpg", content_type: "image/jpeg")
event19.save!

event20 = Event.create!(
  organizer_id: lucas.id,
  sport: 'football-americain',
  title: "Touchdown 🏈",
  description: "Joignez-vous à notre partie de football américain palpitante et plongez dans l'univers enivrant du ballon ovale. Au programme : des rencontres conviviales entre deux équipes. L'objectif du jeu est de faire trembler les filets de l'équipe adverse. Peu importe votre niveau, venez vous éclater, vous défouler et partager un moment de sportivité et de respect. Préparez-vous à marquer des touchdowns, réaliser des plaquages spectaculaires et goûter à la victoire dans une ambiance électrisante de football américain ! 🏈🔥💪",
  localisation: "18 Rue Marie Curie, 44230 Saint-Sébastien-sur-Loire",
  event_level: "intermediaire",
  max_participant: 20,
  datetime: Date.parse("28-06-2023")
)
file = File.open(Rails.root.join("db/images/football-americain.jpg"))
event20.photo.attach(io: file, filename: "football-americain.jpg", content_type: "image/jpeg")
event20.save!

puts "Creating event_participants..."

EventParticipant.create!(
  status: "participe",
  user_id: lea.id,
  event_id: event1.id
)
EventParticipant.create!(
  status: "participe",
  user_id: maxime.id,
  event_id: event1.id
)
EventParticipant.create!(
  status: "participe",
  user_id: sarah.id,
  event_id: event1.id
)
EventParticipant.create!(
  status: "participe",
  user_id: lucas.id,
  event_id: event1.id
)
EventParticipant.create!(
  status: "participe",
  user_id: sarah.id,
  event_id: event5.id
)
EventParticipant.create!(
  status: "participe",
  user_id: maxime.id,
  event_id: event5.id
)
EventParticipant.create!(
  status: "participe",
  user_id: lucas.id,
  event_id: event5.id
)
EventParticipant.create!(
  status: "participe",
  user_id: lea.id,
  event_id: event5.id
)

EventParticipant.create!(
  status: "participe",
  user_id: sarah.id,
  event_id: event2.id
)
EventParticipant.create!(
  status: "participe",
  user_id: lucas.id,
  event_id: event2.id
)
EventParticipant.create!(
  status: "participe",
  user_id: maxime.id,
  event_id: event2.id
)
EventParticipant.create!(
  status: "intéressé",
  user_id: julien.id,
  event_id: event2.id
)
EventParticipant.create!(
  status: "participe",
  user_id: lea.id,
  event_id: event3.id
)
EventParticipant.create!(
  status: "participe",
  user_id: sarah.id,
  event_id: event3.id
)
EventParticipant.create!(
  status: "participe",
  user_id: maxime.id,
  event_id: event3.id
)
EventParticipant.create!(
  status: "participe",
  user_id: lea.id,
  event_id: event4.id
)
EventParticipant.create!(
  status: "participe",
  user_id: lucas.id,
  event_id: event4.id
)
EventParticipant.create!(
  status: "participe",
  user_id: maxime.id,
  event_id: event4.id
)
EventParticipant.create!(
  status: "participe",
  user_id: sarah.id,
  event_id: event6.id
)
EventParticipant.create!(
  status: "participe",
  user_id: lucas.id,
  event_id: event7.id
)
EventParticipant.create!(
  status: "participe",
  user_id: lea.id,
  event_id: event7.id
)
EventParticipant.create!(
  status: "participe",
  user_id: maxime.id,
  event_id: event7.id
)
EventParticipant.create!(
  status: "participe",
  user_id: lucas.id,
  event_id: event8.id
)
EventParticipant.create!(
  status: "participe",
  user_id: sarah.id,
  event_id: event8.id
)
EventParticipant.create!(
  status: "participe",
  user_id: lea.id,
  event_id: event8.id
)

EventParticipant.create!(
  status: "participe",
  user_id: maxime.id,
  event_id: event10.id
)
EventParticipant.create!(
  status: "participe",
  user_id: lucas.id,
  event_id: event10.id
)
EventParticipant.create!(
  status: "participe",
  user_id: sarah.id,
  event_id: event10.id
)
EventParticipant.create!(
  status: "participe",
  user_id: lea.id,
  event_id: event11.id
)
EventParticipant.create!(
  status: "participe",
  user_id: lucas.id,
  event_id: event11.id
)
EventParticipant.create!(
  status: "participe",
  user_id: maxime.id,
  event_id: event11.id
)
EventParticipant.create!(
  status: "participe",
  user_id: sarah.id,
  event_id: event12.id
)
EventParticipant.create!(
  status: "participe",
  user_id: lea.id,
  event_id: event12.id
)
EventParticipant.create!(
  status: "participe",
  user_id: maxime.id,
  event_id: event12.id
)
EventParticipant.create!(
  status: "participe",
  user_id: maxime.id,
  event_id: event13.id
)
EventParticipant.create!(
  status: "participe",
  user_id: sarah.id,
  event_id: event13.id
)
EventParticipant.create!(
  status: "participe",
  user_id: lucas.id,
  event_id: event13.id
)
EventParticipant.create!(
  status: "participe",
  user_id: sarah.id,
  event_id: event14.id
)
EventParticipant.create!(
  status: "participe",
  user_id: lucas.id,
  event_id: event14.id
)
EventParticipant.create!(
  status: "participe",
  user_id: maxime.id,
  event_id: event14.id
)
EventParticipant.create!(
  status: "participe",
  user_id: sarah.id,
  event_id: event15.id
)
EventParticipant.create!(
  status: "participe",
  user_id: lucas.id,
  event_id: event15.id
)
EventParticipant.create!(
  status: "participe",
  user_id: maxime.id,
  event_id: event15.id
)
EventParticipant.create!(
  status: "participe",
  user_id: lea.id,
  event_id: event16.id
)

EventParticipant.create!(
  status: "participe",
  user_id: maxime.id,
  event_id: event16.id
)
EventParticipant.create!(
  status: "participe",
  user_id: lucas.id,
  event_id: event17.id
)
EventParticipant.create!(
  status: "participe",
  user_id: lea.id,
  event_id: event17.id
)
EventParticipant.create!(
  status: "participe",
  user_id: maxime.id,
  event_id: event17.id
)
EventParticipant.create!(
  status: "participe",
  user_id: lucas.id,
  event_id: event18.id
)
EventParticipant.create!(
  status: "participe",
  user_id: maxime.id,
  event_id: event18.id
)
EventParticipant.create!(
  status: "participe",
  user_id: sarah.id,
  event_id: event18.id
)
EventParticipant.create!(
  status: "participe",
  user_id: maxime.id,
  event_id: event19.id
)
EventParticipant.create!(
  status: "participe",
  user_id: lucas.id,
  event_id: event19.id
)
EventParticipant.create!(
  status: "participe",
  user_id: lea.id,
  event_id: event19.id
)
EventParticipant.create!(
  status: "participe",
  user_id: lea.id,
  event_id: event20.id
)
EventParticipant.create!(
  status: "participe",
  user_id: lucas.id,
  event_id: event20.id
)
EventParticipant.create!(
  status: "participe",
  user_id: maxime.id,
  event_id: event20.id
)

puts "Creating chatboxes..."

Chatbox.create!(
  event_id: event1.id,
  name: event1.title
)
Chatbox.create!(
  event_id: event2.id,
  name: event2.title
)
Chatbox.create!(
  event_id: event3.id,
  name: event3.title
)
Chatbox.create!(
  event_id: event4.id,
  name: event4.title
)
Chatbox.create!(
  event_id: event5.id,
  name: event5.title
)
Chatbox.create!(
  event_id: event6.id,
  name: event6.title
)
Chatbox.create!(
  event_id: event7.id,
  name: event7.title
)
Chatbox.create!(
  event_id: event8.id,
  name: event8.title
)

Chatbox.create!(
  event_id: event10.id,
  name: event10.title
)
Chatbox.create!(
  event_id: event11.id,
  name: event11.title
)
Chatbox.create!(
  event_id: event12.id,
  name: event12.title
)
Chatbox.create!(
  event_id: event13.id,
  name: event13.title
)
Chatbox.create!(
  event_id: event14.id,
  name: event14.title
)
Chatbox.create!(
  event_id: event15.id,
  name: event15.title
)
Chatbox.create!(
  event_id: event16.id,
  name: event16.title
)
Chatbox.create!(
  event_id: event17.id,
  name: event17.title
)
Chatbox.create!(
  event_id: event18.id,
  name: event18.title
)
Chatbox.create!(
  event_id: event19.id,
  name: event19.title
)
Chatbox.create!(
  event_id: event20.id,
  name: event20.title
)
puts "Finish !!!"
