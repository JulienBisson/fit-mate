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
  description: "qsdfghjkl",
  localisation: "Rue du Pré Salé, 44200 Nantes",
  event_level: "intermediate",
  max_participant: 10,
  datetime: Date.parse("16-06-2023")
)
puts "Creating event_participants..."

EventParticipant.create!(
  status: "maybe",
  user_id: lucas.id,
  event_id: event1.id
)
