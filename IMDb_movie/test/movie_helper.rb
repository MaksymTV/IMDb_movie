require 'movie_helper'

class MovieTest < ActiveSupport::TestCase

  # Перевірка того, що модель може бути створена
  test "should create a movie" do
    movie = Movie.new(title: "The Matrix", year: 1999, genre: "Action")
    assert movie.save
  end

  # Перевірка того, що модель може бути знайдена за своїм ідентифікатором
  test "should find a movie by id" do
    movie = Movie.create(title: "The Matrix", year: 1999, genre: "Action")
    found_movie = Movie.find(movie.id)
    assert_equal movie, found_movie
  end

end