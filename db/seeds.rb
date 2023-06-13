# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded wgvjygujgjjbjbith the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'open-uri'

puts "Cleaning database..."

EventParticipant.destroy_all
Message.destroy_all
Chatbox.destroy_all
Event.destroy_all
User.destroy_all

puts 'Creating user...'

alice = User.create!(first_name: "Alice", last_name: "Martin", username: "alice25", age: 25,
  email: "alice.martin@gmail.com", password: "secret",
  description: "étudiante en littérature et passionnée de lecture",
  favorite_sport: "yoga", sport_level: "intermediaire")

file = File.open(Rails.root.join("db/images/alice.jpg"))
alice.photo.attach(io: file, filename: "alice.jpg", content_type: "image/jpeg")
alice.save!

julien = User.create!(first_name: "Julien", last_name: "Dubois", username: "JulesD", age: 30,
  email: "julien.dubois@gmail.com", password: "secret",
  description: "Je suis un étudiant en informatique qui aime le cinéma, la musique et les jeux vidéo.
  Je suis curieux, créatif et sociable.",
  favorite_sport: "basket", sport_level: "intermediaire")

file = File.open(Rails.root.join("db/images/julien.jpg"))
julien.photo.attach(io: file, filename: "julien.jpg", content_type: "image/jpeg")
julien.save!

lea = User.create!(first_name: "Lea", last_name: "richmond", username: "LeaR", age: 22,
  email: "Lea.richmond@gmail.com", password: "secret",
  description: "Je suis une infirmière qui aime voyager, lire et faire du yoga.
  Je suis douce, généreuse et dynamique.",
  favorite_sport: "bike", sport_level: "intermediaire")

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
  organizer_id: alice.id,
  sport: 'yoga',
  title: "Yoga pour tous",
  description: "Vous êtes invités à participer à un évènement de yoga qui vous
  fera découvrir les bienfaits de cette pratique millénaire sur votre corps et
  votre esprit. Au programme, une séance complète de hatha yoga, comprenant des
  exercices de respiration, des postures adaptées à votre niveau et un temps de
  relaxation. Que vous soyez débutant ou confirmé, venez vous détendre, vous
  étirer et partager un moment de sérénité et d’harmonie.",
  localisation: "30 Allée Robert Cheval, 44980 Sainte-Luce-sur-Loire",
  event_level: "intermediaire",
  max_participant: 10,
  datetime: Date.parse("16-06-2023")
)
file = File.open(Rails.root.join("db/images/yoga.jpg"))
event1.photo.attach(io: file, filename: "yoga.jpg", content_type: "image/jpeg")
event1.save!

event2 = Event.create!(
  organizer_id: alice.id,
  sport: 'fitness',
  title: "Fitness au Loiry",
  description: "Vous êtes invités à participer à une de séance de fitness qui
  vous fera découvrir les bienfaits du sport sur votre forme et votre santé.
  Au programme, des exercices variés et adaptés à votre niveau, qui sollicitent
  tous les muscles du corps et améliorent votre endurance. Que vous soyez
  débutant ou confirmé, venez vous éclater, vous défouler et partager un moment
  de convivialité et de bien-être.",
  localisation: "Bd Guichet Serex, 44120 Vertou",
  event_level: "débutant",
  max_participant: 6,
  datetime: Date.parse("18-06-2023")
)
file = File.open(Rails.root.join("db/images/fitness.jpg"))
event2.photo.attach(io: file, filename: "fitness.jpg", content_type: "image/jpeg")
event2.save!

event3 = Event.create!(
  organizer_id: alice.id,
  sport: 'tennis',
  title: "Grand Chelem pour les nuls",
  description: "Vous êtes invités à participer à une partie de
  tennis qui vous fera découvrir les sensations du sport de raquette le plus
  pratiqué au monde. Au programme, des matchs amicaux entre deux joueurs ou
  deux équipes de deux joueurs. Que vous soyez débutant ou confirmé, venez vous
  amuser, vous dépenser et partager un moment de fair-play et de respect.",
  localisation: "74 Bd des Anglais, 44100 Nantes",
  event_level: "débutant",
  max_participant: 4,
  datetime: Date.parse("23-06-2023")
)
file = File.open(Rails.root.join("db/images/tennis.jpg"))
event3.photo.attach(io: file, filename: "tennis.jpg", content_type: "image/jpeg")
event3.save!

event4 = Event.create!(
  organizer_id: alice.id,
  sport: 'soccer',
  title: "Foot à la Beaujoire",
  description: "Vivez le frisson du football dans l'emblématique stade de la Beaujoire à Nantes !
  Rejoignez-nous pour un événement sportif inoubliable qui enflammera votre passion pour le jeu.
  Ressentez l'énergie de la foule alors que des athlètes talentueux présentent leurs compétences sur le terrain verdoyant.
  Que vous soyez joueur ou passionné de football, cette invitation est pour vous.
  Entrez dans la grandeur du stade, assistez à la précision des dribbles et des buts et faites partie de l'action.
  Le Stade de la Beaujoire propose des installations à la pointe de la technologie et une ambiance électrique qui vous laissera envoûté.
  Ne manquez pas l'occasion de frapper, tacler et marquer sur ce terrain légendaire.
  Rejoignez-nous, encouragez les autres fans et créez des souvenirs qui dureront toute une vie.
  Enfilez vos chaussures et vivez l'ivresse du football au stade de la Beaujoire à Nantes. Laissez le jeu vous couper le souffle !",
  localisation: "Route de Saint-Joseph, 44300 Nantes",
  event_level: "débutant",
  max_participant: 10,
  datetime: Date.parse("10-06-2023")
)
file = File.open(Rails.root.join("db/images/yoga.jpg"))
event4.photo.attach(io: file, filename: "yoga.jpg", content_type: "image/jpeg")
event4.save!

event5 = Event.create!(
  organizer_id: julien.id,
  sport: 'basket',
  title: "Vivez le playground",
  description: "Vous êtes invités à participer à une de partie de
  basket qui vous fera découvrir les sensations du sport collectif le plus
  pratiqué en salle. Au programme, des matchs amicaux entre deux équipes de
  cinq joueurs. Que vous soyez débutant ou confirmé, venez vous amuser,
  vous dépenser et partager un moment de fair-play et de respect.",
  localisation: "6 Rue des Bourdonnières, 44200 Nantes",
  event_level: "intermediaire",
  max_participant: 10,
  datetime: Date.parse("16-06-2023")
)
file = File.open(Rails.root.join("db/images/basket.jpg"))
event5.photo.attach(io: file, filename: "basket.jpg", content_type: "image/jpeg")
event5.save!

event6 = Event.create!(
  organizer_id: julien.id,
  sport: 'boxing',
  title: "Séance de boxe",
  description: "Vous êtes invités à participer à une de séance de boxe
  qui vous fera découvrir les sensations du sport de combat le plus pratiqué en
  salle. Au programme, des exercices variés et adaptés à votre niveau, qui
  sollicitent tous les muscles du corps et améliorent votre endurance.
  Que vous soyez débutant ou confirmé, venez vous amuser, vous dépenser et
  partager un moment de respect et de discipline.",
  localisation: "5 Rue Gaston Michel, 44000 Nantes",
  event_level: "intermediaire",
  max_participant: 10,
  datetime: Date.parse("18-06-2023")
)
file = File.open(Rails.root.join("db/images/boxing.jpg"))
event6.photo.attach(io: file, filename: "boxing.jpg", content_type: "image/jpeg")
event6.save!

event7 = Event.create!(
  organizer_id: julien.id,
  sport: 'volleyball',
  title: "Beach's Volley",
  description: "Préparez-vous à sauter, plonger et rire jusqu'à la victoire pour une manche de volley sur la plage !
  Rejoignez-nous au Rezé Beach Volley Club, à deux pas de la ville animée de Nantes.
  Cet événement est une extravagance de volley-ball de plage qui vous laissera avec des cheveux sableux,
  une peau bronzée et des abdominaux douloureux à cause de rires incessants. Que vous soyez un pro du volley-ball
  ou un novice, venez découvrir les batailles sur le terrain sablonneux, les plongeons scandaleux et les pointes épiques
  qui vous feront vous sentir comme une superstar de la plage. Prenez vos lunettes de soleil, badigeonnez-vous de crème solaire
  et rejoignez-nous pour une journée remplie de compétitions amicales, de nettoyages hilarants et de beaucoup de plaisir sur le sable !",
  localisation: "101 Rue de la Trocardière, 44400 Rezé",
  event_level: "débutant",
  max_participant: 6,
  datetime: Date.parse("20-06-2023")
)
file = File.open(Rails.root.join("db/images/escalation.jpg"))
event7.photo.attach(io: file, filename: "escalation.jpg", content_type: "image/jpeg")
event7.save!

event8 = Event.create!(
  organizer_id: lea.id,
  sport: 'paddle',
  title: "Paddle à Beautour",
  description: "Préparez-vous à pagayer sur la pittoresque Sèvre, juste au sud de Nantes !
  Rejoignez-nous pour un événement de paddle qui vous fera glisser,
  éclabousser et rire à travers les eaux pittoresques. Que vous soyez un pro du paddle ou un débutant,
  cet événement promet un plaisir sans fin et des moments inoubliables. Préparez-vous à vous équilibrer,
  à vaciller et peut-être même à faire un plongeon inattendu (ne vous inquiétez pas, tout cela fait partie du plaisir !).
  Alors prenez votre crème solaire, libérez votre gourou intérieur du paddle et rejoignez-nous pour une journée remplie de rires,
  de bouffonneries aquatiques et de beaucoup de manigances de paddleboard!",
  localisation: "Rue du Calvaire 18, 44000 Nantes",
  event_level: "intermediaire",
  max_participant: 2,
  datetime: Date.parse("18-06-2023")
)
file = File.open(Rails.root.join("db/images/fitness.jpg"))
event8.photo.attach(io: file, filename: "fitness.jpg", content_type: "image/jpeg")
event8.save!

event9 = Event.create!(
  organizer_id: lea.id,
  sport: 'basket',
  title: "Partie de basket",
  description: "Vous êtes invités à participer à une de partie de
  basket qui vous fera découvrir les sensations du sport collectif le plus
  pratiqué en salle. Au programme, des matchs amicaux entre deux équipes de
  cinq joueurs. Que vous soyez débutant ou confirmé, venez vous amuser,
  vous dépenser et partager un moment de fair-play et de respect.",
  localisation: "Rue des Dervallières, 44100 Nantes",
  event_level: "intermediaire",
  max_participant: 10,
  datetime: Date.parse("22-06-2023")
)
file = File.open(Rails.root.join("db/images/basket.jpg"))
event9.photo.attach(io: file, filename: "basket.jpg", content_type: "image/jpeg")
event9.save!

event10 = Event.create!(
  organizer_id: lea.id,
  sport: 'bike',
  title: "Tour de Nantes",
  description: "Appel à tous les passionnés de vélo et les aventuriers !
  Rejoignez-nous pour un événement exaltant alors que nous pédalons dans les charmantes rues de Nantes,
  explorant les monuments emblématiques qui font de cette ville la fierté de la duchesse Anne.
  Enfourchez vos vélos et embarquez pour un voyage qui vous emmènera sur une route panoramique,
  en passant par les sites incontournables qui définissent Nantes.
  Du magnifique Château des Ducs de Bretagne à la vibrante et artistique Île de Nantes,
  chaque tour de pédale dévoilera un nouveau morceau d'histoire et de culture. Alors dépoussiérez vos casques,
  attrapez vos vélos et rejoignez-nous pour une journée inoubliable de vélo, de camaraderie
  et de découverte alors que nous explorons le cœur et l'âme de Nantes, le royaume de la duchesse Anne.",
  localisation: "Bd Léon Bureau, 44200 Nantes",
  event_level: "débutant",
  max_participant: 10,
  datetime: Date.parse("23-06-2023")
)
file = File.open(Rails.root.join("db/images/bike.jpg"))
event10.photo.attach(io: file, filename: "bike.jpg", content_type: "image/jpeg")
event10.save!

event11 = Event.create!(
  organizer_id: maxime.id,
  sport: 'badminton',
  title: "A vos volants",
  description: "Préparez-vous à smasher, à glisser et à faire la fête comme jamais auparavant
  lors de notre extravaganza de badminton ! Rejoignez-nous pour un événement rempli de joie
  et de rigolade qui vous fera brandir vos raquettes et vous tordre de rire. Que vous soyez un pro du badminton
  ou un novice complet, cette soirée est placée sous le signe des échanges délirants, des ratés épiques
  et de l'exhibition de vos meilleurs mouvements de danse avec volant. Attendez-vous à des coups fous,
  des plongeons farfelus et plus de fous rires que vous ne pouvez imaginer. Alors attrapez votre raquette,
  mettez votre visage de compétiteur (ou votre expression la plus ridicule) et préparez-vous à une soirée de folie badmintonesque
  qui vous laissera quémander encore plus !",
  localisation: "20 rue de la Saint-Médard, 44300 Nantes",
  event_level: "intermediaire",
  max_participant: 10,
  datetime: Date.parse("26-06-2023")
)
file = File.open(Rails.root.join("db/images/football.jpg"))
event11.photo.attach(io: file, filename: "football.jpg", content_type: "image/jpeg")
event11.save!

event12 = Event.create!(
  organizer_id: maxime.id,
  sport: 'bike',
  title: "Balade à vélo",
  description: "Vous êtes invités à participer à une balade à vélo
  qui vous fera découvrir les plus beaux itinéraires de Nantes. Au programme,
  des parcours adaptés à tous les niveaux, du débutant au confirmé. Que vous
  soyez à la recherche d’aventure, de nature ou de culture, venez vous évader,
  vous ressourcer et partager un moment de convivialité et de découverte.",
  localisation: "Rue de la Gaudinière, 44300 Nantes",
  event_level: "intermediaire",
  max_participant: 10,
  datetime: Date.parse("19-06-2023")
)
file = File.open(Rails.root.join("db/images/bike.jpg"))
event12.photo.attach(io: file, filename: "bike.jpg", content_type: "image/jpeg")
event12.save!

event13 = Event.create!(
  organizer_id: maxime.id,
  sport: 'bodybuilding',
  title: "Séance de musculation",
  description: "Vous êtes invités à participer à une de séance de musculation qui
  vous fera découvrir les bienfaits du sport sur votre forme et votre santé.
  Au programme, des exercices variés et adaptés à votre niveau, qui sollicitent
  tous les muscles du corps et améliorent votre endurance. Que vous soyez
  débutant ou confirmé, venez vous éclater, vous défouler et partager un moment
  de convivialité et de bien-être.",
  localisation: "Bd Général de Gaulle, 44200 Nantes",
  event_level: "intermediaire",
  max_participant: 2,
  datetime: Date.parse("15-06-2023")
)
file = File.open(Rails.root.join("db/images/bodybuilding.jpg"))
event13.photo.attach(io: file, filename: "bodybuilding.jpg", content_type: "image/jpeg")
event13.save!

event14 = Event.create!(
  organizer_id: maxime.id,
  sport: 'judo',
  title: "Séance de judo",
  description: "Vous êtes invités à participer à une séance de judo
  qui vous fera découvrir les sensations du sport de combat le plus pratiqué en
  France. Au programme, des exercices variés et adaptés à votre niveau, qui
  sollicitent tous les muscles du corps et améliorent votre équilibre. Le but
  du jeu est de maîtriser son adversaire en utilisant des techniques de
  projection, d’immobilisation, d’étranglement ou de clé. Que vous soyez
  débutant ou confirmé, venez vous amuser, vous dépasser et partager un moment
  de respect et de discipline.",
  localisation: "Palais des Sports de Beaulieu, Rue André Tardieu, 44200 Nantes",
  event_level: "intermediaire",
  max_participant: 10,
  datetime: Date.parse("23-06-2023")
)
file = File.open(Rails.root.join("db/images/judo.jpg"))
event14.photo.attach(io: file, filename: "judo.jpg", content_type: "image/jpeg")
event14.save!

event15 = Event.create!(
  organizer_id: sarah.id,
  sport: 'tennis',
  title: "Partie de tennis",
  description: "Vous êtes invités à participer à une partie de
  tennis qui vous fera découvrir les sensations du sport de raquette le plus
  pratiqué au monde. Au programme, des matchs amicaux entre deux joueurs ou
  deux équipes de deux joueurs. Que vous soyez débutant ou confirmé, venez vous
  amuser, vous dépenser et partager un moment de fair-play et de respect.",
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
  sport: 'swimming',
  title: "Séance de natation",
  description: "Vous êtes invités à participer à une séance de
  natation qui vous fera découvrir les bienfaits du sport aquatique.
  Au programme, des exercices variés et adaptés à votre niveau, qui sollicitent
  tous les muscles du corps et améliorent votre endurance. Que vous soyez
  débutant ou confirmé, venez vous amuser, vous dépenser et partager un moment
  de détente et de bien-être.",
  localisation: "Allée de l'Île Gloriette, 44000 Nantes",
  event_level: "débutant",
  max_participant: 6,
  datetime: Date.parse("19-06-2023")
)
file = File.open(Rails.root.join("db/images/swimming.jpg"))
event16.photo.attach(io: file, filename: "swimming.jpg", content_type: "image/jpeg")
event16.save!

event17 = Event.create!(
  organizer_id: sarah.id,
  sport: 'escalation',
  title: "Séance d'escalade",
  description: "Vous êtes invités à participer à une séance
  d’escalade qui vous fera découvrir les sensations du sport vertical.
  Au programme, des voies ou des blocs adaptés à votre niveau, sur un mur
  artificiel. Que vous soyez débutant ou confirmé, venez vous
  amuser, vous dépasser et partager un moment de coopération et de confiance.",
  localisation: "27 Bd Bâtonnier Cholet, 44100 Nantes",
  event_level: "intermediaire",
  max_participant: 6,
  datetime: Date.parse("21-06-2023")
)
file = File.open(Rails.root.join("db/images/escalation.jpg"))
event17.photo.attach(io: file, filename: "escalation.jpg", content_type: "image/jpeg")
event17.save!

event18 = Event.create!(
  organizer_id: lucas.id,
  sport: 'rugby',
  title: "Partie de rugby",
  description: "Vous êtes invités à une partie de rugby qui vous
  fera vivre les émotions du sport collectif le plus pratiqué en Australie.
  Au menu, des rencontres conviviales entre deux équipes.Que vous soyez novice
  ou expert, venez vous éclater, vous dépenser et partager un moment de
  sportivité et de respect.",
  localisation: "2 Rue Louis Joxe, 44200 Nantes",
  event_level: "intermediaire",
  max_participant: 10,
  datetime: Date.parse("23-06-2023")
)
file = File.open(Rails.root.join("db/images/rugby.jpg"))
event18.photo.attach(io: file, filename: "rugby.jpg", content_type: "image/jpeg")
event18.save!

event19 = Event.create!(
  organizer_id: lucas.id,
  sport: 'bike',
  title: "Balade à vélo",
  description: "Vous êtes invités à participer à une balade à vélo
  qui vous fera découvrir les plus beaux itinéraires de Nantes. Au programme,
  des parcours adaptés à tous les niveaux, du débutant au confirmé. Que vous
  soyez à la recherche d’aventure, de nature ou de culture, venez vous évader,
  vous ressourcer et partager un moment de convivialité et de découverte.",
  localisation: "8 Pl. des Muses, 44800 Saint-Herblain",
  event_level: "débutant",
  max_participant: 4,
  datetime: Date.parse("17-06-2023")
)
file = File.open(Rails.root.join("db/images/bike.jpg"))
event19.photo.attach(io: file, filename: "bike.jpg", content_type: "image/jpeg")
event19.save!

event20 = Event.create!(
  organizer_id: lucas.id,
  sport: 'football',
  title: "Partie de foot",
  description: "Vous êtes conviés à une partie de foot qui vous
  plongera dans l’univers du ballon rond. Au menu, des rencontres conviviales
  entre deux équipes. Le but du jeu est de faire
  trembler les filets de l’équipe adverse.
  Que vous soyez novice ou expert, venez vous éclater,
  vous défouler et partager un moment de sportivité et de respect.",
  localisation: "18 Rue Marie Curie, 44230 Saint-Sébastien-sur-Loire",
  event_level: "intermediaire",
  max_participant: 10,
  datetime: Date.parse("28-06-2023")
)
file = File.open(Rails.root.join("db/images/football.jpg"))
event20.photo.attach(io: file, filename: "football.jpg", content_type: "image/jpeg")
event20.save!

puts "Creating event_participants..."

EventParticipant.create!(
  status: "participe",
  user_id: lucas.id,
  event_id: event16.id
)

EventParticipant.create!(
  status: "participe",
  user_id: lucas.id,
  event_id: event14.id
)

EventParticipant.create!(
  status: "participe",
  user_id: lucas.id,
  event_id: event17.id
)

EventParticipant.create!(
  status: "participe",
  user_id: lucas.id,
  event_id: event10.id
)

EventParticipant.create!(
  status: "participe",
  user_id: alice.id,
  event_id: event17.id
)

EventParticipant.create!(
  status: "participe",
  user_id: alice.id,
  event_id: event19.id
)

EventParticipant.create!(
  status: "participe",
  user_id: alice.id,
  event_id: event14.id
)

EventParticipant.create!(
  status: "participe",
  user_id: alice.id,
  event_id: event10.id
)

EventParticipant.create!(
  status: "participe",
  user_id: maxime.id,
  event_id: event20.id
)

EventParticipant.create!(
  status: "participe",
  user_id: maxime.id,
  event_id: event19.id
)

EventParticipant.create!(
  status: "participe",
  user_id: maxime.id,
  event_id: event4.id
)

EventParticipant.create!(
  status: "participe",
  user_id: maxime.id,
  event_id: event7.id
)

EventParticipant.create!(
  status: "participe",
  user_id: julien.id,
  event_id: event20.id
)

EventParticipant.create!(
  status: "participe",
  user_id: julien.id,
  event_id: event8.id
)

EventParticipant.create!(
  status: "participe",
  user_id: julien.id,
  event_id: event15.id
)

EventParticipant.create!(
  status: "participe",
  user_id: julien.id,
  event_id: event9.id
)

EventParticipant.create!(
  status: "participe",
  user_id: lea.id,
  event_id: event15.id
)

EventParticipant.create!(
  status: "participe",
  user_id: lea.id,
  event_id: event16.id
)

EventParticipant.create!(
  status: "participe",
  user_id: lea.id,
  event_id: event7.id
)

EventParticipant.create!(
  status: "participe",
  user_id: lea.id,
  event_id: event3.id
)

EventParticipant.create!(
  status: "participe",
  user_id: sarah.id,
  event_id: event4.id
)

EventParticipant.create!(
  status: "participe",
  user_id: sarah.id,
  event_id: event7.id
)

EventParticipant.create!(
  status: "participe",
  user_id: sarah.id,
  event_id: event8.id
)

EventParticipant.create!(
  status: "participe",
  user_id: sarah.id,
  event_id: event9.id
)

EventParticipant.create!(
  status: "participe",
  user_id: lea.id,
  event_id: event3.id
)

EventParticipant.create!(
  status: "participe",
  user_id: lea.id,
  event_id: event1.id
)

EventParticipant.create!(
  status: "participe",
  user_id: maxime.id,
  event_id: event2.id
)

EventParticipant.create!(
  status: "participe",
  user_id: lucas.id,
  event_id: event2.id
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
  event_id: event9.id,
  name: event9.title
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
