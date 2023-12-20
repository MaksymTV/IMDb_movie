class ImportMoviesJob < ApplicationJob
    queue_as :default
  
    def perform
      # Завантажуємо список фільмів з API
      movies = HTTParty.get("https://api.themoviedb.org/3/movie/popular?api_key=#{Rails.application.credentials.tmdb_api_key}")
  
      # Зберігаємо фільми в базу даних
      movies.each do |movie|
        Movie.create(
          title: movie["title"],
          year: movie["release_date"].year,
          rating: movie["vote_average"],
          description: movie["overview"],
          poster_url: movie["poster_path"]
        )
      end
    end
  end
  