class Movie < ActiveRecord::Base
    
    attr_accessible :title, :rating, :description, :release_date, :director

    def self.all_ratings
        return self.select("DISTINCT rating").map(&:rating)
    end

    def find_all_by_director
        Movie.find_all_by_director(director)
    end
end
