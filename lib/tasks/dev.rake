namespace :dev do
  task add_movies: :environment do
    dataset = JSON.parse(File.read("#{Rails.root}/config/movies.json"))
    dataset.each do |item|
      Movie.create!(
        title: item['title'],
        genres: item['genres'],
        description: item['description'],
        release_date: item['release_date'],
        image: item['image']
      )
    end
    Movie.all.each do |movie|
      puts "create!!"
      puts movie['title'] 
    end
  end
end