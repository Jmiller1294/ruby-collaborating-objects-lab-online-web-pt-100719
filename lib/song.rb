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
  song_name = file.split(" - ")[1]
    artist = file.split(" - ")[0]
    song = self.new(song_name)
     song.artist_name = artist
    song
end

def self.all
  @@all
end

def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    #after the artist instance is returned
    #this method calls the artist instance method #add_song
    #add_song adds this current song instance to the artist's song list
    self.artist.add_song(self)
  end

end