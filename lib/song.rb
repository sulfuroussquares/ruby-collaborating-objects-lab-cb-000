class Song
attr_accessor :name, :artist, :songs

def initialize(name)
  @name = name
  @artist = artist
end


def self.new_by_filename(file)
  name = file.split("-")[1].lstrip.rstrip
  artist_name = file.split("-")[0].rstrip
  song = Song.new(name)
  song.artist = Artist.find_or_create_by_name(artist_name)
  song.artist.add_song(song)
  song
end

end
