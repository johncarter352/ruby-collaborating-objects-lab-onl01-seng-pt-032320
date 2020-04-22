class Song 
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    puts "#{@all}"
  end
  
  def self.new_by_filename(file_name)
    song = file_name.split(" - ")[1]
    artist = file_name.split(" - ")[0]
    new_song = self.new(song)
    new_song.artist_name = artist_name
    new_song
  end
  
   def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end
    
  end