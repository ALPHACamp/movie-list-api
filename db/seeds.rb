# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
dataset = JSON.parse(File.read("#{Rails.root}/config/movies_detail.json"))
dataset.each do |item|
  Movie.create!(
    title: item['title'],
    genres: item['genres'],
    description: item['description'],
    release_date: item['release_date'],
    image: item['image'],
    cast: item['cast'],
    director: item['director']
  )
end
Movie.all.each do |movie|
  puts "create!!"
  puts movie['title'] 
end