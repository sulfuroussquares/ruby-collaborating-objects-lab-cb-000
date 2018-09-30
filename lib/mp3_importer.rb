class MP3Importer
  attr_accessor :path

def initialize(path)
  @path = path
end

def files
  Dir["./spec/fixtures/mp3s/*"].map {|i| File.basename(i)}
end

def import
  files.each {|i| Song.new_by_filename(i)}
end

end
