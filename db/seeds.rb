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
Event.destroy_all
User.destroy_all

puts 'Creating user...'

alice = User.create!(first_name: "Alice", last_name: "Martin", username: "alice25", age: 25,
  email: "alice.martin@gmail.com", password: "secret",
  description: "étudiante en littérature et passionnée de lecture",
  favorite_sport: "yoga", sport_level: "intermediate")

file = File.open(Rails.root.join("db/images/alice.jpg"))
alice.photo.attach(io: file, filename: "alice.jpg", content_type: "image/jpeg")
alice.save!

julien = User.create!(first_name: "Julien", last_name: "Dubois", username: "JulesD", age: 30,
  email: "julien.dubois@gmail.com", password: "secret",
  description: "Je suis un étudiant en informatique qui aime le cinéma, la musique et les jeux vidéo.
  Je suis curieux, créatif et sociable.",
  favorite_sport: "basket", sport_level: "intermediate")

file = File.open(Rails.root.join("db/images/julien.jpg"))
julien.photo.attach(io: file, filename: "julien.jpg", content_type: "image/jpeg")
julien.save!

lea = User.create!(first_name: "Lea", last_name: "richmond", username: "LeaR", age: 22,
  email: "Lea.richmond@gmail.com", password: "secret",
  description: "Je suis une infirmière qui aime voyager, lire et faire du yoga.
  Je suis douce, généreuse et dynamique.",
  favorite_sport: "bike", sport_level: "intermediate")

file = File.open(Rails.root.join("db/images/lea.jpg"))
lea.photo.attach(io: file, filename: "lea.jpg", content_type: "image/jpeg")
lea.save!

maxime = User.create!(first_name: "Maxime", last_name: "richard", username: "MaxR", age: 28,
  email: "Maxime.richard@gmail.com", password: "secret",
  description: "Je suis un ingénieur qui aime la nature, les animaux et la photographie.
  Je suis aventurier, passionné et drôle.",
  favorite_sport: "boxing", sport_level: "intermediate")

file = File.open(Rails.root.join("db/images/maxime.jpg"))
maxime.photo.attach(io: file, filename: "maxime.jpg", content_type: "image/jpeg")
maxime.save!

sarah = User.create!(first_name: "Sarah", last_name: "Dupont", username: "SarahD", age: 24,
  email: "Sarah.Dupont@gmail.com", password: "secret",
  description: "Je suis une professeure de français qui aime l’art, la littérature et le théâtre.
  Je suis cultivée, élégante et sympathique.",
  favorite_sport: "fitness", sport_level: "intermediate")

file = File.open(Rails.root.join("db/images/sarah.jpg"))
sarah.photo.attach(io: file, filename: "sarah.jpg", content_type: "image/jpeg")
sarah.save!

lucas = User.create!(first_name: "Lucas", last_name: "Bernard", username: "LucasB", age: 37,
  email: "Lucas.Bernard@gmail.com", password: "secret",
  description: "Je suis un avocat qui aime le sport, la politique et le vin. Je suis ambitieux, charismatique et loyal.",
  favorite_sport: "paddle", sport_level: "intermediate")

file = File.open(Rails.root.join("db/images/lucas.jpg"))
lucas.photo.attach(io: file, filename: "lucas.jpg", content_type: "image/jpeg")
lucas.save!

puts "Creating events..."

event1 = Event.create!(
  organizer_id: alice.id,
  sport: 'yoga',
  title: "Séance de yoga",
  description: "Vous êtes invités à participer à un évènement de yoga qui vous
  fera découvrir les bienfaits de cette pratique millénaire sur votre corps et
  votre esprit. Au programme, une séance complète de hatha yoga, comprenant des
  exercices de respiration, des postures adaptées à votre niveau et un temps de
  relaxation. Que vous soyez débutant ou confirmé, venez vous détendre, vous
  étirer et partager un moment de sérénité et d’harmonie.",
  localisation: "Rue du Pré Salé, 44200 Nantes",
  event_level: "intermediate",
  max_participant: 10,
  datetime: Date.parse("16-06-2023")
)
file = File.open(Rails.root.join("db/images/yoga.jpg"))
event1.photo.attach(io: file, filename: "yoga.jpg", content_type: "image/jpeg")
event1.save!

event2 = Event.create!(
  organizer_id: alice.id,
  sport: 'fitness',
  title: "Séance de fitness",
  description: "Vous êtes invités à participer à une de séance de fitness qui
  vous fera découvrir les bienfaits du sport sur votre forme et votre santé.
  Au programme, des exercices variés et adaptés à votre niveau, qui sollicitent
  tous les muscles du corps et améliorent votre endurance. Que vous soyez
  débutant ou confirmé, venez vous éclater, vous défouler et partager un moment
  de convivialité et de bien-être.",
  localisation: "Centre Commercial Beaulieu, Bd Général de Gaulle, 44200 Nantes",
  event_level: "intermediate",
  max_participant: 6,
  datetime: Date.parse("18-06-2023")
)
file = File.open(Rails.root.join("db/images/fitness.jpg"))
event2.photo.attach(io: file, filename: "fitness.jpg", content_type: "image/jpeg")
event2.save!

event3 = Event.create!(
  organizer_id: alice.id,
  sport: 'tennis',
  title: "Partie de tennis",
  description: "Vous êtes invités à participer à une partie de
  tennis qui vous fera découvrir les sensations du sport de raquette le plus
  pratiqué au monde. Au programme, des matchs amicaux entre deux joueurs ou
  deux équipes de deux joueurs. Que vous soyez débutant ou confirmé, venez vous
  amuser, vous dépenser et partager un moment de fair-play et de respect.",
  localisation: "Stade Pascal Laporte, 74 Bd des Anglais, 44100 Nantes",
  event_level: "beginner",
  max_participant: 4,
  datetime: Date.parse("23-06-2023")
)
file = File.open(Rails.root.join("db/images/tennis.jpg"))
event3.photo.attach(io: file, filename: "tennis.jpg", content_type: "image/jpeg")
event3.save!

event4 = Event.create!(
  organizer_id: alice.id,
  sport: 'yoga',
  title: "Séance de yoga",
  description: "Vous êtes invités à participer à un évènement de yoga qui vous
  fera découvrir les bienfaits de cette pratique millénaire sur votre corps et
  votre esprit. Au programme, une séance complète de hatha yoga, comprenant des
  exercices de respiration, des postures adaptées à votre niveau et un temps de
  relaxation. Que vous soyez débutant ou confirmé, venez vous détendre, vous
  étirer et partager un moment de sérénité et d’harmonie.",
  localisation: "Rue du Pré Salé, 44200 Nantes",
  event_level: "beginner",
  max_participant: 10,
  datetime: Date.parse("10-06-2023")
)
file = File.open(Rails.root.join("db/images/yoga.jpg"))
event4.photo.attach(io: file, filename: "yoga.jpg", content_type: "image/jpeg")
event4.save!

event5 = Event.create!(
  organizer_id: julien.id,
  sport: 'basket',
  title: "Partie de basket",
  description: "Vous êtes invités à participer à une de partie de
  basket qui vous fera découvrir les sensations du sport collectif le plus
  pratiqué en salle. Au programme, des matchs amicaux entre deux équipes de
  cinq joueurs. Que vous soyez débutant ou confirmé, venez vous amuser,
  vous dépenser et partager un moment de fair-play et de respect.",
  localisation: "6 Rue des Bourdonnières.",
  event_level: "intermediate",
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
  event_level: "intermediate",
  max_participant: 10,
  datetime: Date.parse("18-06-2023")
)
file = File.open(Rails.root.join("db/images/boxing.jpg"))
event6.photo.attach(io: file, filename: "boxing.jpg", content_type: "image/jpeg")
event6.save!

event7 = Event.create!(
  organizer_id: julien.id,
  sport: 'escalation',
  title: "Séance d'escalade",
  description: "Vous êtes invités à participer à une séance
  d’escalade qui vous fera découvrir les sensations du sport vertical.
  Au programme, des voies ou des blocs adaptés à votre niveau, sur un mur
  artificiel. Que vous soyez débutant ou confirmé, venez vous
  amuser, vous dépasser et partager un moment de coopération et de confiance.",
  localisation: "27 Bd Bâtonnier Cholet, 44100 Nantes",
  event_level: "beginner",
  max_participant: 6,
  datetime: Date.parse("20-06-2023")
)
file = File.open(Rails.root.join("db/images/escalation.jpg"))
event7.photo.attach(io: file, filename: "escalation.jpg", content_type: "image/jpeg")
event7.save!

event8 = Event.create!(
  organizer_id: lea.id,
  sport: 'fitness',
  title: "Séance de fitness",
  description: "Vous êtes invités à participer à une de séance de fitness qui
  vous fera découvrir les bienfaits du sport sur votre forme et votre santé.
  Au programme, des exercices variés et adaptés à votre niveau, qui sollicitent
  tous les muscles du corps et améliorent votre endurance. Que vous soyez
  débutant ou confirmé, venez vous éclater, vous défouler et partager un moment
  de convivialité et de bien-être.",
  localisation: "Rue du Calvaire 18, 44000 Nantes",
  event_level: "intermediate",
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
  localisation: "5 Allée du Recteur Jean Prud’homme.",
  event_level: "intermediate",
  max_participant: 10,
  datetime: Date.parse("22-06-2023")
)
file = File.open(Rails.root.join("db/images/basket.jpg"))
event9.photo.attach(io: file, filename: "basket.jpg", content_type: "image/jpeg")
event9.save!

event10 = Event.create!(
  organizer_id: lea.id,
  sport: 'bike',
  title: "Balade à vélo",
  description: "Vous êtes invités à participer à une balade à vélo
  qui vous fera découvrir les plus beaux itinéraires de Nantes. Au programme,
  des parcours adaptés à tous les niveaux, du débutant au confirmé. Que vous
  soyez à la recherche d’aventure, de nature ou de culture, venez vous évader,
  vous ressourcer et partager un moment de convivialité et de découverte.",
  localisation: "Route de Saint-Joseph de Porterie, 44300 Nantes",
  event_level: "beginner",
  max_participant: 10,
  datetime: Date.parse("23-06-2023")
)
file = File.open(Rails.root.join("db/images/bike.jpg"))
event10.photo.attach(io: file, filename: "bike.jpg", content_type: "image/jpeg")
event10.save!

event11 = Event.create!(
  organizer_id: maxime.id,
  sport: 'football',
  title: "Partie de foot",
  description: "Vous êtes conviés à une partie de foot qui vous
  plongera dans l’univers du ballon rond. Au menu, des rencontres conviviales
  entre deux équipes. Le but du jeu est de faire
  trembler les filets de l’équipe adverse.
  Que vous soyez novice ou expert, venez vous éclater,
  vous défouler et partager un moment de sportivité et de respect.",
  localisation: " Maison des Haubans, 1 bis Bd de Berlin, 44000 Nantes",
  event_level: "intermediate",
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
  event_level: "intermediate",
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
  localisation: "entre Commercial Beaulieu, Bd Général de Gaulle, 44200 Nantes",
  event_level: "intermediate",
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
  event_level: "intermediate",
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
  event_level: "beginner",
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
  localisation: "All. de l'Île Gloriette, 44000 Nantes",
  event_level: "beginner",
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
  event_level: "intermediate",
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
  event_level: "intermediate",
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
  localisation: "Boulevard de la Bégraisière, 44240 La Chapelle-sur-Erdre",
  event_level: "beginner",
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
  event_level: "intermediate",
  max_participant: 10,
  datetime: Date.parse("28-06-2023")
)
file = File.open(Rails.root.join("db/images/football.jpg"))
event20.photo.attach(io: file, filename: "football.jpg", content_type: "image/jpeg")
event20.save!

puts "Creating event_participants..."

EventParticipant.create!(
  status: "accept",
  user_id: lucas.id,
  event_id: event16.id
)

EventParticipant.create!(
  status: "maybe",
  user_id: lucas.id,
  event_id: event14.id
)

EventParticipant.create!(
  status: "maybe",
  user_id: lucas.id,
  event_id: event17.id
)

EventParticipant.create!(
  status: "accept",
  user_id: lucas.id,
  event_id: event10.id
)

EventParticipant.create!(
  status: "maybe",
  user_id: alice.id,
  event_id: event17.id
)

EventParticipant.create!(
  status: "accept",
  user_id: alice.id,
  event_id: event19.id
)

EventParticipant.create!(
  status: "accept",
  user_id: alice.id,
  event_id: event14.id
)

EventParticipant.create!(
  status: "maybe",
  user_id: alice.id,
  event_id: event10.id
)

EventParticipant.create!(
  status: "accept",
  user_id: maxime.id,
  event_id: event20.id
)

EventParticipant.create!(
  status: "maybe",
  user_id: maxime.id,
  event_id: event19.id
)

EventParticipant.create!(
  status: "accept",
  user_id: maxime.id,
  event_id: event4.id
)

EventParticipant.create!(
  status: "maybe",
  user_id: maxime.id,
  event_id: event7.id
)

EventParticipant.create!(
  status: "maybe",
  user_id: julien.id,
  event_id: event20.id
)

EventParticipant.create!(
  status: "maybe",
  user_id: julien.id,
  event_id: event8.id
)

EventParticipant.create!(
  status: "decline",
  user_id: julien.id,
  event_id: event15.id
)

EventParticipant.create!(
  status: "accept",
  user_id: julien.id,
  event_id: event9.id
)

EventParticipant.create!(
  status: "maybe",
  user_id: lea.id,
  event_id: event15.id
)

EventParticipant.create!(
  status: "maybe",
  user_id: lea.id,
  event_id: event16.id
)

EventParticipant.create!(
  status: "maybe",
  user_id: lea.id,
  event_id: event7.id
)

EventParticipant.create!(
  status: "decline",
  user_id: lea.id,
  event_id: event3.id
)

EventParticipant.create!(
  status: "maybe",
  user_id: sarah.id,
  event_id: event4.id
)

EventParticipant.create!(
  status: "maybe",
  user_id: sarah.id,
  event_id: event7.id
)

EventParticipant.create!(
  status: "accept",
  user_id: sarah.id,
  event_id: event8.id
)

EventParticipant.create!(
  status: "decline",
  user_id: sarah.id,
  event_id: event9.id
)

EventParticipant.create!(
  status: "accept",
  user_id: lea.id,
  event_id: event3.id
)

EventParticipant.create!(
  status: "accept",
  user_id: lea.id,
  event_id: event1.id
)

EventParticipant.create!(
  status: "accept",
  user_id: maxime.id,
  event_id: event2.id
)

EventParticipant.create!(
  status: "accept",
  user_id: lucas.id,
  event_id: event2.id
)
