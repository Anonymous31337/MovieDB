# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.destroy_all
avatar = Movie.create(
    title: "Avatar", 
    originaltitle: "Avatar", 
    releaseyear: 2004, 
    cover:"https://images-na.ssl-images-amazon.com/images/M/MV5BMTYwOTEwNjAzMl5BMl5BanBnXkFtZTcwODc5MTUwMw@@._V1_UY1200_CR90,0,630,1200_AL_.jpg", 
    length: 126, 
    ageres:12, 
    synopsis:"Dies ist eine Kurzbeschreibung"
    )    
thegg = Movie.create(
    title: "Der große Gatsby", 
    originaltitle: "The Great Gatsby", 
    releaseyear: 2013, 
    cover:"https://images-na.ssl-images-amazon.com/images/M/MV5BMTkxNTk1ODcxNl5BMl5BanBnXkFtZTcwMDI1OTMzOQ@@._V1_SY1000_SX666_AL_.jpg",
    length: 143,
    ageres:12,
    synopsis:"A writer and wall street trader, Nick, finds himself drawn to the past and lifestyle of his millionaire neighbor, Jay Gatsby."
    )
thewows = Movie.create(
    title: "The Wolf of Wallstreet", 
    originaltitle: "The Wolf of Wallstreet", 
    releaseyear: 2013, 
    cover:"https://images-na.ssl-images-amazon.com/images/M/MV5BMjIxMjgxNTk0MF5BMl5BanBnXkFtZTgwNjIyOTg2MDE@._V1_SY1000_CR0,0,674,1000_AL_.jpg",
    length: 180,
    ageres:16,
    synopsis:"Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government."
)    

shutterisland = Movie.create(
    title: "Shutter Island", 
    originaltitle: "Shutter Island", 
    releaseyear: 2010, 
    cover:"https://images-na.ssl-images-amazon.com/images/M/MV5BY2NkNTcxNjAtODhjMS00Mjg2LWI1OGItMjRhMGJlODBkZTVlL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNzAxMjE1NDg@._V1_SY1000_CR0,0,675,1000_AL_.jpg",
    length: 138,
    ageres:16,
    synopsis:"In 1954, a U.S. Marshal investigates the disappearance of a murderer, who escaped from a hospital for the criminally insane."
)    

fightclub = Movie.create(
    title: "Fight Club", 
    originaltitle: "Fight Club", 
    releaseyear: 1999, 
    cover:"https://images-na.ssl-images-amazon.com/images/M/MV5BZGY5Y2RjMmItNDg5Yy00NjUwLThjMTEtNDc2OGUzNTBiYmM1XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg",
    length: 180,
    ageres:18,
    synopsis:"An insomniac office worker, looking for a way to change his life, crosses paths with a devil-may-care soap maker, forming an underground fight club that evolves into something much, much more."
)





Actor.destroy_all
# das kann nicht funktionieren, birthdate ist date und nicht int - und es fehlen noch ein paar attribute
#actor1 = Actor.create(name: "Cameron", fname: "James", birthdate:1932)

ldc = Actor.create(
    name: "di Caprio",
    fname: "Leonardo",
    birthdate: "11.11.1974",
    workingcountry:"USA",
)

bp = Actor.create(
    name: "Pitt",
    fname: "Brad",
    birthdate: "18.12.1963",
    workingcountry:"USA",
)

kw = Actor.create(
    name: "Winslet",
    fname: "Kate",
    birthdate: "05.10.1975",
    workingcountry:"USA",
)

jl = Actor.create(
    name: "Leto",
    fname: "Jared",
    birthdate: "26.12.1971",
    workingcountry:"USA",
)

ml = Actor.create(
    name: "Loaf",
    fname: "Meat",
    birthdate: "27.09.1947",
    workingcountry:"USA",
)





# Schauspielern filmen zuordnen
avatar.actors = []
thegg.actors = [ldc]
thewows.actors = [ldc]
shutterisland.actors =[ldc]
fightclub.actors = [jl, ml, bp]

