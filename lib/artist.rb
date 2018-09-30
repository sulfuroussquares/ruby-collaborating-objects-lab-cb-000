class Artist
  attr_accessor :name
  @@all = []

def initialize(name)
  @name = name
  @songs = []
end

def add_song(song)
  @song = song
  @songs << song
end

def songs
  @songs
end

def save
  self.class.all << self
end

def self.all
  @@all
end


def self.find(name)
  self.all.detect {|i| i.name == name}
end

def self.find_or_create_by_name(name)
  if self.find(name)
    self.find(name)
  else
    newartist = Artist.new(name)
  end
end

end
