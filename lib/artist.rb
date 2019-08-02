class Artist
attr_accessor :name, :genre, :title, :songs
@@all = []

def initialize(name)
  @name = name
  @songs = []
  @@all << self
end

def songs
    @songs
end

def new_song(name, genre)
  song = Song.new(name, self, genre)
  @songs << song
end

def genres
  @genres = @songs.collect(&:genre)
end

def self.all
    @@all
end
end
