# movies_controller.rb

class MoviesController < ApplicationController
    before_action :set_movie, only: [:show, :edit, :update, :destroy]
  
    def index
      @movies = Movie.all
      @genres = Genre.all
      @directors = Director.all
      @actors = Actor.all
    end
  
    def show
    end
  
    def new
      @movie = Movie.new
      @genres = Genre.all
      @directors = Director.all
      @actors = Actor.all
    end
  
    def create
      @movie = Movie.new(movie_params)
      @movie.genre = Genre.find(params[:movie][:genre_id])
      @movie.director = Director.find(params[:movie][:director_id])
      @movie.actors = params[:movie][:actors].split(',').map(&:to_i)
  
      if @movie.save
        redirect_to movies_path, notice: 'Фільм успішно створено.'
      else
        render :new
      end
    end
  
    def edit
      @genres = Genre.all
      @directors = Director.all
      @actors = Actor.all
    end
  
    def update
      @movie.genre = Genre.find(params[:movie][:genre_id])
      @movie.director = Director.find(params[:movie][:director_id])
      @movie.actors = params[:movie][:actors].split(',').map(&:to_i)
  
      if @movie.update(movie_params)
        redirect_to movies_path, notice: 'Фільм успішно оновлено.'
      else
        render :edit
      end
    end
  
    def destroy
      @movie.destroy
  
      redirect_to movies_path, notice: 'Фільм успішно видалено.'
    end
  
    private
  
    def set_movie
      @movie = Movie.find(params[:id])
    end
  
    def movie_params
      params.require(:movie).permit(:title, :year, :genre_id, :director_id, :actors, :plot, :rating)
    end
  end
  