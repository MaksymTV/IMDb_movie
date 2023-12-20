class Movie < ApplicationRecord

    has_many :ratings
  
    def self.find_by_imdb_id(imdb_id)
      return nil unless imdb_id.present?
  
      response = HTTParty.get("https://api.themoviedb.org/3/movie/#{imdb_id}?api_key=4324243")
  
      return nil unless response.success?
  
      data = JSON.parse(response.body)
  
      movie = Movie.new(
        title: data["title"],
        year: data["release_date"].year,
        rating: data["vote_average"],
        description: data["overview"],
        poster_url: data["poster_path"]
      )
  
      movie.save
  
      return movie
    end

class Movie < ApplicationRecord
      belongs_to :genre
      belongs_to :actor
      belongs_to :director
    
      validates :title, presence: true
      validates :year, presence: true
      validates :rating, presence: true
      validates :description, presence: true
      validates :poster_url, presence: true
    end
    
  end

  