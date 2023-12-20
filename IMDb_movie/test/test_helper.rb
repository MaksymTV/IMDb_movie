require 'rails_helper'

# Ініціалізація бази даних для тестування
DatabaseCleaner.strategy = :truncation

# Створення фіктивних даних
Movie.create(title: "The Shawshank Redemption", year: 1994, genre: "Drama")
Movie.create(title: "The Godfather", year: 1972, genre: "Crime")
Movie.create(title: "The Dark Knight", year: 2008, genre: "Action")
