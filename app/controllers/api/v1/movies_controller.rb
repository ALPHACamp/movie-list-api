class Api::V1::MoviesController < ApiController
  def index
    @movies = Movie.all
    render json:{
      results: @movies.map do |movie|
        {
          id: movie.id,
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
    @movie = Movie.find_by(id: params[:id])
    render json:{
      results: {
          id: @movie.id,
          title: @movie.title,
          genres: @movie.genres,
          description: @movie.description,
          release_date: @movie.release_date,
          image: @movie.image,
          director: @movie.director,
          cast: @movie.cast,
      }
    }
  end
end
