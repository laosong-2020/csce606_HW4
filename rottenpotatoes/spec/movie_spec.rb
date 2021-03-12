require 'rails_helper'

describe Movie do
    it 'should find movies with the same director' do
        movie1 = Movie.create(title: 'Test1', director: 'Director1')
        movie2 = Movie.create(title: 'Test2', director: 'Director1')
        results = Movie.similar_movies(movie1.title)
        expect(results).to eql([movie1.title, movie1.title, movie2.title])
        #expect(results).to eql(["Test1", "Test1", "Test2"])
    end
    
    it 'should return nil when no director present ' do
        movie1 = Movie.create(title: 'Test 1')
        results = Movie.similar_movies(movie1.title)
        expect(results).to eql(nil)
    end
end

  describe '.all_ratings' do
    it 'returns all ratings' do
      expect(Movie.all_ratings).to match(%w(G PG PG-13 NC-17 R))
    end
  end