class Song


  @@artists = []
  @@genres = []
  @@count = 0

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end

  def name
    @name
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |item|
      genre_hash[item] ||= @@genres.count(item)
    end
    genre_hash
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |item|
      artist_hash[item] ||= @@artists.count(item)
    end
    artist_hash
  end

end
