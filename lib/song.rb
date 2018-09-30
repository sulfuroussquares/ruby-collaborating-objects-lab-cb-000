class Song
attr_accessor :name, :artist, :songs

def initialize(name)
  @name = name
  @artist = artist
end


def self.new_by_filename(file)
  songname = file.split("-")[1].lstrip.rstrip
  newsong = Song.new(songname)
  artistname = file.split("-")[0].lstrip.rstrip
  newsong.artist = Artist.find_or_create_by_name(artistname)
  newsong.artist.add_song(newsong)
  puts newsong
  puts newsong.name
  puts newsong.artist.name
  puts newsong.artist.songs
#  name = filename.split("-")[1].lstrip.rstrip
#song = Song.new(name)
#artist_name = filename.split("-")[0].rstrip
#song.artist = Artist.find_or_create_by_name(artist_name)
#song.artist.add_song(song)
#song
end

end
