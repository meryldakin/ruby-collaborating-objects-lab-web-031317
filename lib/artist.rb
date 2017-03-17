require 'pry'
class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @songs = []
    @name = name
    @@all << self
  end

  def print_songs
    @songs.each do |song_instance|
      puts song_instance.name
    end
  end

  def save
    @@all << self

  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(artist_name)
    @@all.each do |artist_instance|
      if artist_instance.name == artist_name
        return artist_instance
      end
    end
    return self.new(artist_name)
  end
end
