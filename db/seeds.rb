# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Movie.destroy_all

100.times do |i|
	i = ["action", "horreur", "comédie", "drame"]
	film = Movie.create!(name: Faker::Movie.quote, year: rand(1900..2010), 
		genre: i.sample, synopsis: Faker::Lorem.paragraph, director: Faker::FunnyName.name,
		 allocine_rating: rand(1.0..5.0).to_f, my_rating: nil, already_seen: false)
end