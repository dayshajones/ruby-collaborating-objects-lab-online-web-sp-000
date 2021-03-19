class Artist
  attr_accessor :name, :songs
  
  @@all = [] 
  
  def initialize(name)
    @name = name
    @songs = []
    save
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  
  def save
    @@all << self
  end
  
  def add_song
    
  end
  
end