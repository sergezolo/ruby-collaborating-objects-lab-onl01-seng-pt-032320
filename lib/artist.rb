class Artist
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def self.find_or_create_by_name(name)
    if self.all.include?(name)
      self.name
    else
      self.name = self.new
    end
  end
  
  def print_songs
    self.songs.select {|song| puts song.name}
  end

end
