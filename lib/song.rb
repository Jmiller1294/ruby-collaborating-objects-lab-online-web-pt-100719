class Song 
  
attr_accessor :artist , :name

@@all = []

def initialize(song_name)
 @name = song_name
 @@all << self
end



def artist=(artist_obj)
  @artist = artist_obj
  artist_obj.songs << self
end

def self.new_by_filename(file)
  info = file.split(" - ")
  
  self.new(name)
end

def self.all
  @@all
end

end