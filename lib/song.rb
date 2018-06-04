require "pry"
class Song
  attr_accessor :name
  attr_reader :artist

  def initialize(name)
    @name = name
  end

  def artist=(name)
    if (self.artist.nil?)
      self.artist = Artist.find_or_create_by_name(name)
    else
      self.artist.name = name
    end
  end

  def self.new_by_filename(filename)
    song.name = filename.split(" - ")[0]
    song = Song.new(song_name)
    song

  end
end
