class Artist

  @@all = []

 attr_accessor :name

def initialize(name)
  @name = name
  @@all << self
  @songs = []
end

def self.all
@@all
end

def add_song(song)
  @songs << song
  song.artist = self
end

def songs
@songs
end

def self.find_or_create_by_name(name)
  if self.find(name)
    self.find(name)
  else
    self.create(name)
end
end

def self.find(name)
  @@all.find do |artist|
     artist.name == name
end
end

def self.create(name)
  artist = self.new(name)
      @@all << artist
      artist

end

def print_songs
self.songs.each do |song|
  puts song.name

end
end



end
