class Song
  
  attr_accessor :artist, :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    song = self.new
    song.title = filename.split(" - ")[1]
    song.artist.name = filename.split(" - ")[0]
    song
  end
  
  def artist_name=(filename)
    song.artist.name = filename.split(" - ")[0]
    
    
  
    
  
end