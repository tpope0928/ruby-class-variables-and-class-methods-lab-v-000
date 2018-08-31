class Song
  attr_accessor :name, :artist, :genre
  
  @@song_count = 0
  @@genres = []
  @@artist = []
  
  def initialize
    @name = name
    @genre = genre
    @artist = artist
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@song_count
  end
  
  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count [genre]
        genre_count[genre] + 1
      end
    end
    genre_count
  end
  
  

end
