class Movie < ActiveRecord::Base
    
#attr_accessible :title, :rating, :description, :release_date, :director

    def self.all_ratings
        return self.select("DISTINCT rating").map(&:rating)
    end

    def self.similar_movies movie_title
        director = Movie.find_by(title: movie_title).director
        return nil if director.blank? or director.nil?
        Movie.where(director: director).pluck(:title)
    end
end
