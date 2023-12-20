class MoviesController < ApplicationController
    def index
      # Отримуємо список всіх фільмів
      movies = Movie.all
  
      # Фильтруємо фільми за жанром
      if params[:genre]
        movies = movies.where(genre_id: params[:genre])
      end
  
      # Фильтруємо фільми за актором
      if params[:actor]
        movies = movies.where(actor_id: params[:actor])
      end
  
      # Фильтруємо фільми за режисером
      if params[:director]
        movies = movies.where(director_id: params[:director])
      end
  
      render json: movies
    end
  end
  