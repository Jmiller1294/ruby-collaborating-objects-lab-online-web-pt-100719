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

def new_by_filename(file)
  file = Song.new
end

def self.all
  @@all
end

end