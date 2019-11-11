class MP3Importer

attr_accessor :path


def initialize(path)
@path = path
end

def files
  Dir.children(@path)
end

def size
  self.length
end
end