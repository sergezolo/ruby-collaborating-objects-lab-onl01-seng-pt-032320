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
  
  # def self.find_or_create_by_name(name)
  #   if self.all.any?(name) 
  #     self.name
  #   else
  #     artist = Artist.new(name)
  #   end
  # end
  
  def self.find_or_create_by_name(name)
<<<<<<< HEAD
    if self.find(name)
      self.find(name)
    else
      self.create(name)
=======
    if self.all.include?(name)
      self
    else
      artist = Artist.new(name)
      self
>>>>>>> 54a93ed1281a61232a6c09dc5f371b64e19d36d3
    end
  end

  def self.find(name) 
    self.all.detect {|artist| artist.name == name}
  end

  def self.create(name)
    artist = Artist.new(name)
  end



  
  def print_songs
    self.songs.each {|song| puts song.name}
  end

end
