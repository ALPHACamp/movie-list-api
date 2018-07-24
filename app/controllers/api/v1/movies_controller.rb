class Api::V1::MoviesController < ApiController
  def index
    @movies = Movie.all
    render json:{
      results: @movies.map do |movie|
        {
          title: movie.title,
          genres: movie.genres,
          description: movie.description,
          release_date: movie.release_date,
          image: movie.image
        }
      end
    }
  end
  def show
  end
end
