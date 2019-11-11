class Song 
  
attr_accessor :artist , :name

def initialize(song_name)
 @name = song_name
end



def artist=(artist_obj)
  @artist = artist_obj
  artist_obj.songs << self
end

def new_by_filename(file)
  
end