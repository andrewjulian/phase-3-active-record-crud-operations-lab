class Movie < ActiveRecord::Base
  def self.create_with_title(movieTitle)
    Movie.create(title: movieTitle)
  end

  def self.first_movie
    Movie.first
  end

  def self.last_movie
    Movie.last
  end

  def self.movie_count
    Movie.count
  end

  def self.find_movie_with_id(value)
    Movie.find(value)
  end

  def self.find_movie_with_attributes(values)
    Movie.find_by(values)
  end



  def self.find_movies_after_2002
    Movie.where("release_date > 2002")
  end



  def self.update_all_titles(newTitle)
    Movie.update(title: newTitle)
  end

  def update_with_attributes(newInfo)
    self.update(newInfo)
  end

  def self.delete_all_movies
    Movie.destroy_all
  end

  def self.delete_by_id(value)
    selected = Movie.find(value)
    selected.destroy
  end

end