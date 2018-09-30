class MP3Importer
  attr_accessor :path

def initialize(path)
  @path = path
end

def self.files
  DirDir["./spec/fixtures/mp3s/*"].map {|x| File.basename(x)}
end

end
