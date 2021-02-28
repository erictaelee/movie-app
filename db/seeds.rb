# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

actor = Actor.create({first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock"})

actor = Actor.create({first_name: "Chris", last_name: "Hemsworth", known_for: "Thor"})


movie = Movie.create({title: "The Avengers", year: 2012, plot: "Save NYC from Loki's ambush"})

movie = Movie.create({title: "Wolf of Wallstreets", year: 2013, plot: "Jordan Belfort and his posse seek to get rich by manipulating the market"})