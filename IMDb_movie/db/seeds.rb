# Додаємо тестові записи до таблиці фільмів
Movie.create!(title: "The Shawshank Redemption", year: 1994, genre: "Drama", director: "Frank Darabont", actors: "Tim Robbins, Morgan Freeman", plot: "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.", rating: 9.3)
Movie.create!(title: "The Godfather", year: 1972, genre: "Crime, Drama", director: "Francis Ford Coppola", actors: "Marlon Brando, Al Pacino, James Caan", plot: "The story of the Corleone family under patriarch Vito Corleone, focusing on the transformation of his youngest son, Michael, from reluctant family outsider to ruthless mafia boss.", rating: 9.2)
Movie.create!(title: "The Dark Knight", year: 2008, genre: "Action, Crime, Drama", director: "Christopher Nolan", actors: "Christian Bale, Heath Ledger, Michael Caine", plot: "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.", rating: 9.0)

# Додаємо тестового користувача
User.create!(email: "admin@example.com", password: "password", admin: true)
