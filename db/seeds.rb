# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
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
  localisation: "Rue du Pré Salé, 44200 Nantes",
  event_level: "intermediate",
  max_participant: 6,
  datetime: Date.parse("18-06-2023")
)

event3 = Event.create!(
  organizer_id: alice.id,
  sport: 'tennis',
  title: "Partie de tennis",
  description: "Vous êtes invités à participer à une partie de
  tennis qui vous fera découvrir les sensations du sport de raquette le plus
  pratiqué au monde. Au programme, des matchs amicaux entre deux joueurs ou
  deux équipes de deux joueurs. Que vous soyez débutant ou confirmé, venez vous
  amuser, vous dépenser et partager un moment de fair-play et de respect.",
  localisation: "Rue du Pré Salé, 44200 Nantes",
  event_level: "beginner",
  max_participant: 4,
  datetime: Date.parse("23-06-2023")
)

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

event5 = Event.create!(
  organizer_id: julien.id,
  sport: 'basket',
  title: "Partie de basket",
  description: "Vous êtes invités à participer à une de partie de
  basket qui vous fera découvrir les sensations du sport collectif le plus
  pratiqué en salle. Au programme, des matchs amicaux entre deux équipes de
  cinq joueurs. Que vous soyez débutant ou confirmé, venez vous amuser,
  vous dépenser et partager un moment de fair-play et de respect.",
  localisation: "Rue du Pré Salé, 44200 Nantes",
  event_level: "intermediate",
  max_participant: 10,
  datetime: Date.parse("16-06-2023")
)

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
  localisation: "Rue du Pré Salé, 44200 Nantes",
  event_level: "intermediate",
  max_participant: 10,
  datetime: Date.parse("18-06-2023")
)

event7 = Event.create!(
  organizer_id: julien.id,
  sport: 'escalation',
  title: "Séance d'escalade",
  description: "Vous êtes invités à participer à une séance
  d’escalade qui vous fera découvrir les sensations du sport vertical.
  Au programme, des voies ou des blocs adaptés à votre niveau, sur un mur
  artificiel. Que vous soyez débutant ou confirmé, venez vous
  amuser, vous dépasser et partager un moment de coopération et de confiance.",
  localisation: "Rue du Pré Salé, 44200 Nantes",
  event_level: "beginner",
  max_participant: 6,
  datetime: Date.parse("20-06-2023")
)

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
  localisation: "Rue du Pré Salé, 44200 Nantes",
  event_level: "intermediate",
  max_participant: 2,
  datetime: Date.parse("18-06-2023")
)

event9 = Event.create!(
  organizer_id: lea.id,
  sport: 'basket',
  title: "Partie de basket",
  description: "Vous êtes invités à participer à une de partie de
  basket qui vous fera découvrir les sensations du sport collectif le plus
  pratiqué en salle. Au programme, des matchs amicaux entre deux équipes de
  cinq joueurs. Que vous soyez débutant ou confirmé, venez vous amuser,
  vous dépenser et partager un moment de fair-play et de respect.",
  localisation: "Rue du Pré Salé, 44200 Nantes",
  event_level: "intermediate",
  max_participant: 10,
  datetime: Date.parse("22-06-2023")
)

event10 = Event.create!(
  organizer_id: lea.id,
  sport: 'bike',
  title: "Balade à vélo",
  description: "Vous êtes invités à participer à une balade à vélo
  qui vous fera découvrir les plus beaux itinéraires de Nantes. Au programme,
  des parcours adaptés à tous les niveaux, du débutant au confirmé. Que vous
  soyez à la recherche d’aventure, de nature ou de culture, venez vous évader,
  vous ressourcer et partager un moment de convivialité et de découverte.",
  localisation: "Rue du Pré Salé, 44200 Nantes",
  event_level: "beginner",
  max_participant: 10,
  datetime: Date.parse("23-06-2023")
)

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
  localisation: "Rue du Pré Salé, 44200 Nantes",
  event_level: "intermediate",
  max_participant: 10,
  datetime: Date.parse("26-06-2023")
)

event12 = Event.create!(
  organizer_id: maxime.id,
  sport: 'bike',
  title: "Balade à vélo",
  description: "Vous êtes invités à participer à une balade à vélo
  qui vous fera découvrir les plus beaux itinéraires de Nantes. Au programme,
  des parcours adaptés à tous les niveaux, du débutant au confirmé. Que vous
  soyez à la recherche d’aventure, de nature ou de culture, venez vous évader,
  vous ressourcer et partager un moment de convivialité et de découverte.",
  localisation: "Rue du Pré Salé, 44200 Nantes",
  event_level: "intermediate",
  max_participant: 10,
  datetime: Date.parse("19-06-2023")
)

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
  localisation: "Rue du Pré Salé, 44200 Nantes",
  event_level: "intermediate",
  max_participant: 2,
  datetime: Date.parse("15-06-2023")
)

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
  localisation: "Rue du Pré Salé, 44200 Nantes",
  event_level: "intermediate",
  max_participant: 10,
  datetime: Date.parse("23-06-2023")
)

event15 = Event.create!(
  organizer_id: sarah.id,
  sport: 'tennis',
  title: "Partie de tennis",
  description: "Vous êtes invités à participer à une partie de
  tennis qui vous fera découvrir les sensations du sport de raquette le plus
  pratiqué au monde. Au programme, des matchs amicaux entre deux joueurs ou
  deux équipes de deux joueurs. Que vous soyez débutant ou confirmé, venez vous
  amuser, vous dépenser et partager un moment de fair-play et de respect.",
  localisation: "Rue du Pré Salé, 44200 Nantes",
  event_level: "beginner",
  max_participant: 4,
  datetime: Date.parse("24-06-2023")
)

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
  localisation: "Rue du Pré Salé, 44200 Nantes",
  event_level: "beginner",
  max_participant: 6,
  datetime: Date.parse("19-06-2023")
)

event17 = Event.create!(
  organizer_id: sarah.id,
  sport: 'escalation',
  title: "Séance d'escalade",
  description: "Vous êtes invités à participer à une séance
  d’escalade qui vous fera découvrir les sensations du sport vertical.
  Au programme, des voies ou des blocs adaptés à votre niveau, sur un mur
  artificiel. Que vous soyez débutant ou confirmé, venez vous
  amuser, vous dépasser et partager un moment de coopération et de confiance.",
  localisation: "Rue du Pré Salé, 44200 Nantes",
  event_level: "intermediate",
  max_participant: 6,
  datetime: Date.parse("21-06-2023")
)

event18 = Event.create!(
  organizer_id: lucas.id,
  sport: 'rugby',
  title: "Partie de rugby",
  description: "Vous êtes invités à une partie de rugby qui vous
  fera vivre les émotions du sport collectif le plus pratiqué en Australie.
  Au menu, des rencontres conviviales entre deux équipes.Que vous soyez novice
  ou expert, venez vous éclater, vous dépenser et partager un moment de
  sportivité et de respect.",
  localisation: "Rue du Pré Salé, 44200 Nantes",
  event_level: "intermediate",
  max_participant: 10,
  datetime: Date.parse("23-06-2023")
)

event19 = Event.create!(
  organizer_id: lucas.id,
  sport: 'bike',
  title: "Balade à vélo",
  description: "Vous êtes invités à participer à une balade à vélo
  qui vous fera découvrir les plus beaux itinéraires de Nantes. Au programme,
  des parcours adaptés à tous les niveaux, du débutant au confirmé. Que vous
  soyez à la recherche d’aventure, de nature ou de culture, venez vous évader,
  vous ressourcer et partager un moment de convivialité et de découverte.",
  localisation: "Rue du Pré Salé, 44200 Nantes",
  event_level: "beginner",
  max_participant: 10,
  datetime: Date.parse("17-06-2023")
)

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
  localisation: "Rue du Pré Salé, 44200 Nantes",
  event_level: "intermediate",
  max_participant: 10,
  datetime: Date.parse("28-06-2023")
)
puts "Creating event_participants..."

EventParticipant.create!(
  status: "maybe",
  user_id: lucas.id,
  event_id: event1.id
)
