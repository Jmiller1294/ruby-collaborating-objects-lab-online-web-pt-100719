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
  name = new_by_filename.split(" - ")[1]
  self.new = 
end

def self.all
  @@all
end

end