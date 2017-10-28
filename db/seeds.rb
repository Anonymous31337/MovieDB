# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.destroy_all
avatar = Movie.create(title: "Avatar", originaltitle: "Avatar", releaseyear: 2004, cover:"https://images-na.ssl-images-amazon.com/images/M/MV5BMTYwOTEwNjAzMl5BMl5BanBnXkFtZTcwODc5MTUwMw@@._V1_UY1200_CR90,0,630,1200_AL_.jpg", length: 126, ageres:12, synopsis:"Dies ist eine Kurzbeschreibung")

Actor.destroy_all
actor1 = Actor.create(name: "Cameron", fname: "James", birthdate:1932)
avatar.actors = [actor1]